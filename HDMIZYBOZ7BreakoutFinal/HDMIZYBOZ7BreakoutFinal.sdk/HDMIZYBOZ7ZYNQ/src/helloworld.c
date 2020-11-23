/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"

// Parameter definitions
#define INTC_DEVICE_ID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
#define Gameover_DEVICE_ID		XPAR_AXI_GPIO_0_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID  XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
#define Name_DEVICE_ID 			XPAR_AXI_GPIO_2_DEVICE_ID

#define GO_INT 			XGPIO_IR_CH1_MASK

XGpio  GameoverInst, NameInst;
XScuGic INTCInst;
static int gameover_value;
int f;

char name [3];
int score;
unsigned char gameover_count;
//----------------------------------------------------
// PROTOTYPE FUNCTIONS
//----------------------------------------------------
static void GO_Intr_Handler(void *baseaddr_p);
static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
static int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);

//----------------------------------------------------
// INTERRUPT HANDLER FUNCTIONS
// - called by the timer, button interrupt, performs
// - LED flashing
//----------------------------------------------------

void GO_Intr_Handler(void *InstancePtr) {
	// Disable GPIO interrupts
	XGpio_InterruptDisable(&GameoverInst, GO_INT);
	// Ignore additional button presses
	if ((XGpio_InterruptGetStatus(&GameoverInst) & GO_INT) != GO_INT) {
		return;
	}
	gameover_count++;
	if (gameover_count%2 == 1){
		//Write name
		printf("Enter name:\n");
		scanf("%s", name);
		printf("Name written\n");
		XGpio_DiscreteWrite(&NameInst,1,name[0]|name[1]<<8|name[2]<<16);
	}

	else {
		printf("Game Reset\n");
		name[0] = '?';
		name[1] = '?';
		name[2] = '?';
		printf("Name reset!\n");
		XGpio_DiscreteWrite(&NameInst,1,name[0]|name[1]<<8|name[2]<<16);
	}
	gameover_value = XGpio_DiscreteRead(&GameoverInst, 1);



	(void) XGpio_InterruptClear(&GameoverInst, GO_INT);
	// Enable GPIO interrupts
	XGpio_InterruptEnable(&GameoverInst, GO_INT);
}

//----------------------------------------------------
// INITIAL SETUP FUNCTIONS
//----------------------------------------------------

int InterruptSystemSetup(XScuGic *XScuGicInstancePtr) {
	// Enable interrupt
	XGpio_InterruptEnable(&GameoverInst, GO_INT);
	XGpio_InterruptGlobalEnable(&GameoverInst);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler,
			XScuGicInstancePtr);
	Xil_ExceptionEnable();

	return XST_SUCCESS;

}

int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr) {
	XScuGic_Config *IntcConfig;
	int status;

	// Interrupt controller initialization
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig,
			IntcConfig->CpuBaseAddress);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// Call to interrupt setup
	status = InterruptSystemSetup(&INTCInst);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// Connect GPIO interrupt to handler
	status = XScuGic_Connect(&INTCInst, INTC_GPIO_INTERRUPT_ID,
			(Xil_ExceptionHandler) GO_Intr_Handler, (void *) GpioInstancePtr);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// Enable GPIO interrupts interrupt
	XGpio_InterruptEnable(GpioInstancePtr, 1);
	XGpio_InterruptGlobalEnable(GpioInstancePtr);

	// Enable GPIO and timer interrupts in the controller
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);

	return XST_SUCCESS;
}

int main()
{
	int status;
	printf("Begin Game!\n\r");
	//initialize name string
	name[0] = '?';
	name[1] = '?';
	name[2] = '?';
	// Initialize the name GPIO
	status = XGpio_Initialize(&NameInst, Name_DEVICE_ID);
	if (status != XST_SUCCESS)
		return XST_FAILURE;
	// Initialize the direction of Name as output
	XGpio_SetDataDirection(&NameInst, 1, 0x00);
	init_platform();
		// Initialize Gameover Interrupt
		status = XGpio_Initialize(&GameoverInst, Gameover_DEVICE_ID);
		if (status != XST_SUCCESS)
			return XST_FAILURE;
		// Set all buttons direction to inputs
		XGpio_SetDataDirection(&GameoverInst, 1, 0xFF);

		// Initialize interrupt controller
		status = IntcInitFunction(INTC_DEVICE_ID, &GameoverInst);
		if (status != XST_SUCCESS)
			return XST_FAILURE;
		printf("Interrupt initialized! \n\r");
		gameover_count = 0;
		//Write to GPIO AXI name
		XGpio_DiscreteWrite(&NameInst,1,name[0]|name[1]<<8|name[2]<<16);
		while (1)
			;
		return 0;
}
