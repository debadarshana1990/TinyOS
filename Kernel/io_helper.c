/*****************************************
 * this utility is to test the IO functionality 
 * It is also cretaed to move the cursor 
 * ********************************************/
#include "io.h"


/* IO ports for Cursor movement */
#define FB_COMMAND_PORT  0x3D4
#define FB_DATA_PORT     0x3D5

/* I/O port Command */
#define FB_HIGH_BYTE_CMD  14
#define FB_LOW_BYTE_CMD	  15

/************
 * pos : position of the cursor 
 * ********************/

void fb_move_cursor(unsigned short pos)
{
	outb(FB_COMMAND_PORT,FB_HIGH_BYTE_CMD);
	outb(FB_DATA_PORT,((pos >> 8) & 0x00FF));
	outb(FB_COMMAND_PORT,FB_LOWBYTE_CMD);
	outb(FB_DATA_PORT,(pos & 0x00FF);
}
