GPIO_PORTA_DATA         EQU     0x400043FC
MEMORY_ADDRESS		    EQU 	0x20000100			  
CURSORX0BASE		    EQU 	0x20000404
CURSORX1BASE		    EQU 	0x20000408	
CURSORX2BASE		    EQU 	0x2000040C
ADC0_IM	 			    EQU		0x40038008	; Interrupt Select
ADC1_IM	 	   		    EQU		0x40039008	; Interrupt Select	
YCOOR				    EQU		0x20000410					
XCOOR		  		    EQU		0x20000414
XCOORPREV				EQU		0x20000458
YCOORPREV				EQU		0x2000045C
BASESCREEN			    EQU		0x20000600
OBJECTS				    EQU		0x20000460
STATES				    EQU		0x20000450	; state
PREVSTATE				EQU		0x20000454	; prev
COUNTERVAL				EQU		0x20000700	

						AREA    sdata, DATA, READONLY
						THUMB					
numbers					DCB 	0x3e, 0x51, 0x49, 0x45, 0x3e,0x00, 0x00 ;// 30 0
						DCB 	0x00, 0x42, 0x7f, 0x40, 0x00,0x00, 0x00 ;// 31 1
						DCB 	0x42, 0x61, 0x51, 0x49, 0x46,0x00, 0x00 ;// 32 2
						DCB 	0x21, 0x41, 0x45, 0x4b, 0x31,0x00, 0x00 ;// 33 3
						DCB 	0x18, 0x14, 0x12, 0x7f, 0x10,0x00, 0x00 ;// 34 4
						DCB		0x27, 0x45, 0x45, 0x45, 0x39,0x00, 0x00 ;// 35 5
						DCB 	0x3c, 0x4a, 0x49, 0x49, 0x30,0x00, 0x00 ;// 36 6
						DCB 	0x01, 0x71, 0x09, 0x05, 0x03,0x00, 0x00 ;// 37 7
						DCB 	0x36, 0x49, 0x49, 0x49, 0x36,0x00, 0x00 ;// 38 8
						DCB 	0x06, 0x49, 0x49, 0x29, 0x1e,0x00, 0x00 ;// 39 9																			
MAN1					DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x30, 0x10, 0x78, 0x7c, 0x3c, 0x10, 0x30, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0xf0, 0xf0, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0x7c, 0x7c, 0x3c, 0x38, 0x38, 0x38, 0x38, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xc0, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		0x00, 0x00, 0x00, 0x00, 0x60, 0x30, 0x10, 0x78, 0x7c, 0x3c, 0x10, 0x30, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0xe0, 0xf8, 0xfc, 0xfe, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x0e, 0xfe, 0xfe, 0x7e, 0xbe, 0xbe, 0xbe, 0x7e, 0xff, 0xff, 0xff, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfc, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x06, 0x03, 0x01, 0x07, 0x07, 0x03, 0x01, 0x03, 0x06, 0x00, 0x80, 0xc0, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xc0, 0xf0, 0xf8, 0xfc, 0xfe, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x80, 0xf9, 0xff, 0xcc, 0x9d, 0xbb, 0xbb, 0xc6, 0xfb, 0x80, 0xbb, 0xff, 0xc3, 0xdb, 0x81, 0xff, 0x83, 0xfb, 0xf7, 0xfb, 0x80, 0xbb, 0xff, 0xff, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x03, 0x01, 0x07, 0x07, 0x03, 0x01, 0x03, 0x06, 0x00, 0x00, 0x00, 0x00 
						DCB		0x00, 0x00, 0x18, 0x18, 0x18, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf9, 0xfb, 0xf1, 0xc3, 0x01, 0x03, 0x03, 0x01, 0x03, 0x01, 0x01, 0x03, 0x01, 0x03, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0xff, 0xff, 0xff, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x87, 0xc7, 0xe7, 0xf7, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0x78, 0x18, 0x18, 0x18, 0x18, 0x18 
						DCB		0xc0, 0x60, 0x20, 0x20, 0x20, 0x20, 0x21, 0x67, 0xdf, 0x9f, 0x7f, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xfe, 0x7c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x7c, 0xfc, 0xfc, 0xfd, 0xfd, 0xfd, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfd, 0x7d, 0x3d, 0x1c, 0x1c, 0x1c, 0x1c, 0x1c, 0x3c, 0x7c, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x7f, 0x3f, 0x1f, 0x1f, 0x1f, 0x1f, 0x13, 0x31, 0x60, 0xc0, 0x80, 0x00, 0x00, 0x00, 0x00 
						DCB		0x62, 0x22, 0x26, 0x3c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x06, 0x0d, 0x1b, 0x17, 0x1f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3e, 0x3e, 0x3e, 0x3c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x07, 0x0f, 0x1f, 0x1f, 0x1f, 0x3f, 0x3f, 0x3f, 0x1f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x1f, 0x1f, 0x1e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x07, 0x0f, 0x0f, 0x0f, 0x1f, 0x3f, 0x1f, 0x3f, 0x3f, 0x2f, 0x27, 0x23, 0x31, 0x11, 0x13, 0x1e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x06, 0x0c, 0x08

MAN2					DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0xf0, 0xf0, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0x7c, 0x7c, 0x3c, 0x38, 0x38, 0x38, 0x38, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x30, 0x10, 0x78, 0x7c, 0x3c, 0x10, 0x30, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x0c, 0x04, 0x1e, 0x1f, 0x0f, 0x04, 0x0c, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0xe0, 0xf8, 0xfc, 0xfe, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x0e, 0xfe, 0xfe, 0x7e, 0xbe, 0xbe, 0xbe, 0x7e, 0xff, 0xff, 0xff, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfc, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x30, 0x10, 0x78, 0x7c, 0x3c, 0x10, 0x30, 0x60, 0x00 
						DCB		0x00, 0x18, 0x0c, 0x04, 0x1e, 0x1f, 0x0f, 0x04, 0x0c, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xc0, 0xf0, 0xf8, 0xfc, 0xfe, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x80, 0xf9, 0xff, 0xcc, 0x9d, 0xbb, 0xbb, 0xc6, 0xfb, 0x80, 0xbb, 0xff, 0xc3, 0xdb, 0x81, 0xff, 0x83, 0xfb, 0xf7, 0xfb, 0x80, 0xbb, 0xff, 0xff, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		0x00, 0x00, 0x18, 0x18, 0x18, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf9, 0xfb, 0xf1, 0xc3, 0x01, 0x03, 0x03, 0x01, 0x03, 0x01, 0x01, 0x03, 0x01, 0x03, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0xff, 0xff, 0xff, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x87, 0xc7, 0xe7, 0xf7, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0x78, 0x18, 0x18, 0x18, 0x18, 0x18 
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x0f, 0x3f, 0x7f, 0xff, 0xff, 0xff, 0x7f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3e, 0x7c, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfd, 0xfd, 0xfd, 0xfc, 0xfc, 0x7c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x7c, 0xfc, 0xfc, 0xfd, 0xfd, 0xfd, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xfc, 0xff, 0xff, 0xff, 0xff, 0xff, 0x7f, 0x3f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x3f, 0x7f, 0xff, 0xff, 0xff, 0xff, 0x7f, 0x3f, 0x0f, 0x07, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0x60
						DCB		0x03, 0x06, 0x0c, 0x18, 0x10, 0x10, 0x30, 0x20, 0x30, 0x10, 0x30, 0x20, 0x23, 0x26, 0x2e, 0x3e, 0x3e, 0x3c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x07, 0x0f, 0x1f, 0x1f, 0x1f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3e, 0x3e, 0x3e, 0x3c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x07, 0x0f, 0x1f, 0x1f, 0x1f, 0x3f, 0x3f, 0x3f, 0x1f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x1f, 0x1f, 0x1e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x07, 0x0c, 0x08, 0x08, 0x18, 0x30, 0x10, 0x30, 0x20, 0x20, 0x20, 0x21, 0x31

WIN1					DCB		 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xfc, 0xfc, 0xfc, 0x0c, 0x0c, 0x0c, 0x1c, 0xdc, 0xfc, 0xfc, 0xfc, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xfc, 0xfc, 0xfc, 0xfc, 0x0c, 0x0c, 0x0c, 0x0c, 0xfc, 0xfc, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0x3f, 0xff, 0xf8, 0xe0, 0x80, 0x00, 0x00, 0x01, 0x3f, 0xff, 0xff, 0xff, 0xff, 0xff, 0x01, 0xdd, 0xdd, 0xc1, 0xff, 0xff, 0xff, 0xf7, 0xfb, 0x01, 0xff, 0xff, 0xff, 0xff, 0xff, 0x3f, 0x01, 0x00, 0x00, 0x80, 0xe0, 0xf0, 0xff, 0x3f, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x07, 0x0f, 0x0e, 0x1e, 0x1c, 0x1d, 0x3f, 0x3f, 0x3f, 0x7f, 0xfe, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xfe, 0x7f, 0x3f, 0x3f, 0x3f, 0x1d, 0x1c, 0x1e, 0x0f, 0x0f, 0x07, 0x03, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0x0f, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x9f, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB	 	 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0xe0, 0xf0, 0xf8, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xfc, 0xf0, 0xe0, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x60, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x60, 0x60, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

WIN2					DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xfc, 0xfc, 0xfc, 0x0c, 0x0c, 0x0c, 0x1c, 0xdc, 0xfc, 0xfc, 0xfc, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xfc, 0xfc, 0xfc, 0xfc, 0x0c, 0x0c, 0x0c, 0x0c, 0xfc, 0xfc, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0x3f, 0xff, 0xf8, 0xe0, 0x80, 0x00, 0x00, 0x01, 0x3f, 0xff, 0xff, 0xff, 0xff, 0xff, 0x01, 0xdd, 0xdd, 0xc1, 0xff, 0xff, 0xff, 0x3b, 0xdd, 0xed, 0xe3, 0xff, 0xff, 0xff, 0xff, 0x3f, 0x01, 0x00, 0x00, 0x80, 0xe0, 0xf0, 0xff, 0x3f, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x07, 0x0f, 0x0e, 0x1e, 0x1c, 0x1d, 0x3f, 0x3f, 0x3f, 0x7f, 0xfe, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xfe, 0xfe, 0xfe, 0x7e, 0x3f, 0x3f, 0x3f, 0x1d, 0x1c, 0x1e, 0x0f, 0x0f, 0x07, 0x03, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0x0f, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x9f, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0xe0, 0xf0, 0xf8, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xfc, 0xf0, 0xe0, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x60, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x60, 0x60, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	

WAIT					DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0xc0, 0xc0, 0xc0, 0xc0, 0xc0, 0xc0, 0xc0, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0xc0, 0xc0, 0xc0, 0xc0, 0xc0, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x70, 0x70, 0x70, 0x70, 0x7f, 0x7f, 0x7f, 0x00, 0x00, 0x00, 0x00, 0x0f, 0x01, 0x00, 0x00, 0x80, 0xc1, 0x7f, 0x7f, 0x3f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf0, 0xfc, 0xfe, 0xfe, 0xe3, 0xe1, 0xe0, 0xe0, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x18, 0x18, 0x18, 0x28, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x47, 0x86, 0x86, 0x86, 0xfe, 0x00, 0x00, 0x08, 0xff, 0x88, 0x00, 0x00, 0xf8, 0x88, 0xfe, 0xfe, 0x00, 0xfe, 0x06, 0x06, 0x08, 0x00, 0x08, 0x08, 0xff, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
						DCB		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x03, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00


TRAVELSHIP				DCB		0x38, 0x48, 0x90, 0x93, 0x93, 0x9F, 0x48, 0x38;
WARSHIP					DCB		0x38, 0x70, 0xF7, 0xFF, 0xFF, 0xF7, 0x72, 0x3A;

P						DCB		0x7f, 0x09, 0x09, 0x09, 0x06 ,0x00, 0x00 ;P

						AREA   	Routines,READONLY,CODE
						EXTERN 	WRITESCREEN
						EXTERN 	WRITE
						EXTERN 	CLEARSCREEN
						EXTERN 	DELAY100
						EXTERN	WCOUNT
						EXTERN	LINEINIT
						EXPORT	P1WON
						EXPORT	P2WON
						EXPORT 	UPDATECURSOR
						EXPORT	CLEARBOUND
UPDATECURSOR 			PUSH	{R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,LR}
						LDR 	R1,=ADC0_IM		;disable adc interrupts
						LDR 	R2,=ADC1_IM
						MOV		R0,#0x0
						STR		R0,[R1]
						STR		R0,[R2]			
						
					
						LDR 	R0, =STATES
						LDRB 	R1, [R0]
						CMP 	R1, #0
						BEQ 	STATE0
						CMP 	R1, #1
						BEQ		STATE1
						CMP 	R1, #2
						BEQ		STATE1
						CMP 	R1, #3
						BEQ		STATE1
						CMP 	R1, #4
						BEQ		STATE1
						CMP 	R1, #5
						BEQ		STATE1
						CMP 	R1, #6
						BEQ 	STATE6
						CMP 	R1, #7
						BEQ 	STATE7
						CMP 	R1, #8
						BEQ 	STATE8
						CMP 	R1, #9
						BEQ 	STATE8
						CMP 	R1, #10
						BEQ 	STATE8
						CMP 	R1, #11
						BEQ 	STATE8
						CMP 	R1, #12
						BEQ 	STATE8
;						CMP 	R1, #13
;						BEQ 	STATE13
;						CMP 	R1, #14
;						BEQ 	STATE13
						CMP 	R1, #1
						BEQ 	STATE13
						B   	DONE
			
STATE0					BL 		START
						B  		DONE
STATE1					BL		CLEARBOUND
;						LDR 	R0,=XCOOR
;						LDRB 	R3, [R0]
;						LDR     R2,=XCOORPREV
;						LDRB    R1, [R2]
;						CMP     R3, R1
;						BNE		NEW0
;						LDR 	R5,=YCOOR
;						LDRB 	R4, [R5]
;						LDR     R6,=YCOORPREV
;						LDRB    R7, [R6]
;						CMP     R4, R7
;						BNE		NEW0
;						LDR 	R0, =STATES     
;						LDRB 	R1, [R0]
;						LDR		R2, =PREVSTATE
;						LDRB	R3, [R2]
;						CMP		R1, R3
;						BNE		NEW0
;						B		DONE						
NEW0					BL 		SHIPUPDATE
						BL 		CURSORUPDATE
						BL   	WRITESCREEN	
						B  		DONE
STATE6					BL		CLEARBOUND
						LDR 	R1,=GPIO_PORTA_DATA
						LDR		R0,[R1]
						BIC		R0,	#0x40
						STR		R0,[R1]

						MOV 	R2, #0x20
						BL  	WRITE
						
						MOV 	R2, #0x40		
						BL		WRITE
						MOV		R2, #0x80
						BL  	WRITE
						
						LDR 	R1,=GPIO_PORTA_DATA			
						LDR 	R0,[R1]
						ORR		R0,#0x40
						STR		R0,[R1]
						
						LDR  	R0,=WAIT
						MOV	 	R1,#504
WAIT0					LDR  	R2,[R0],#1
						BL   	WRITE
						SUBS 	R1,#1
						BNE  	WAIT0
						B  		DONE
STATE7					
						BL 		SHIPUPDATE
						BL		WRITESCREEN
						B  		DONE
STATE8					BL		COUNTERUPDATE
						BL		CLEARBOUND
;						LDR 	R0,=XCOOR
;						LDRB 	R3, [R0]
;						LDR     R2,=XCOORPREV
;						LDRB    R1, [R2]
;						CMP     R3, R1
;						BNE		NEW1
;						LDR 	R5,=YCOOR
;						LDRB 	R4, [R5]
;						LDR     R6,=YCOORPREV
;						LDRB    R7, [R6]
;						CMP     R4, R7
;						BNE		NEW1
;						LDR 	R0, =STATES     
;						LDRB 	R1, [R0]
;						LDR		R2, =PREVSTATE
;						LDRB	R3, [R2]
;						CMP		R1, R3
;						BNE		NEW1
;						B		DONE
NEW1					BL 		MINEUPDATE
						BL 		CURSORUPDATE
						BL   	WRITESCREEN	
						B  		DONE
STATE13					B  		DONE


START			      	PUSH 	{LR}
						LDR 	R1,=GPIO_PORTA_DATA
						LDR		R0,[R1]
						BIC		R0,	#0x40
						STR		R0,[R1]

						MOV 	R2, #0x20
						BL  	WRITE
						
						MOV 	R2, #0x40		
						BL		WRITE
						MOV		R2, #0x80
						BL  	WRITE
						
						LDR 	R1,=GPIO_PORTA_DATA			
						LDR 	R0,[R1]
						ORR		R0,#0x40
						STR		R0,[R1]
						
						LDR  	R0,=MAN1
						MOV	 	R1,#504
MANLOOP1				LDR  	R2,[R0],#1
						BL   	WRITE
						SUBS 	R1,#1
						BNE  	MANLOOP1
						MOV		R1, #10
DELAY0					BL		DELAY100
						SUBS	R1, #1
						BNE		DELAY0
						LDR  	R0,=MAN2
						MOV	 	R1,#504
MANLOOP2				LDR  	R2,[R0],#1
						BL   	WRITE
						SUBS 	R1,#1
						BNE  	MANLOOP2
						MOV		R1, #10
DELAY1					BL		DELAY100
						SUBS	R1, #1
						BNE		DELAY1						
						POP  	{LR}
						BX   	LR
							

SHIPUPDATE				PUSH 	{R0-R8}
						PUSH 	{LR}
										
						LDR  	R0, =OBJECTS
						
GETSHIP					LDRB 	R1, [R0, #2]
						CMP  	R1, #0
						BEQ  	SHIPUPDATED
						LDRB 	R2, [R0]
						LSL		R2, #2
						LDRB 	R3, [R0, #1]
						CMP  	R1, #2
						BEQ  	TSHIP
						CMP  	R1, #1
						BEQ  	WSHIP
						B	 	SHIPUPDATED
						
WSHIP					LDR  	R4, =WARSHIP
						LDR  	R6, =MEMORY_ADDRESS
						MOV  	R8, #8
						
WASHIP					LDRB  	R5, [R4], #1
						LSL  	R5, R5, R3
						LDR  	R7, [R6, R2]
						ORR  	R7, R5
						STR  	R7, [R6, R2]
						ADD  	R6, #4
						SUBS 	R8, #1
						BNE  	WASHIP
						ADD  	R0, #3
						B	 	GETSHIP
						
TSHIP					LDR  	R4, =TRAVELSHIP
						LDR  	R6, =MEMORY_ADDRESS
						MOV  	R8, #8
TRSHIP					LDRB  	R5, [R4], #1
						LSL  	R5, R5, R3
						LDR  	R7, [R6, R2]
						ORR  	R7, R5
						STR  	R7, [R6, R2]
						ADD  	R6, #4
						SUBS 	R8, #1
						BNE  	TRSHIP
						ADD  	R0, #3
						B	 	GETSHIP
SHIPUPDATED				LDR 	R0, =STATES     
						LDRB 	R1, [R0]
						LDR		R2, =PREVSTATE
						STRB	R1, [R2]	
						POP 	{LR}
						POP 	{R0-R8}
						BX  	LR
						
						
						
CURSORUPDATE 			PUSH 	{R0-R7}
						PUSH 	{LR}
						LDR 	R0,=XCOOR
						LDRB 	R3, [R0]
						LDR 	R0,=YCOOR
						LDRB 	R4, [R0]
						
						MOV 	R2,#4
						LDR 	R0, =CURSORX0BASE
						LDR 	R5, =MEMORY_ADDRESS
						MUL 	R2, R3, R2
						ADD 	R5, R2
						CMP 	R3, #0
						BEQ 	X0
						LDR 	R1, [R0]
						LSL 	R1, R1, R4
						LSR 	R1, R1, #1
						SUB 	R5, #4
						LDR		R6, [R5]
						ORR		R1, R6
						STR		R1, [R5], #4
X0						LDR 	R1, [R0, #4]
						LSL 	R1, R1, R4
						LSR 	R1, R1, #1
						LDR		R6, [R5]
						ORR		R1, R6
						STR		R1, [R5]
						CMP 	R3, #63
						BEQ		CURSORUPDATED
						LDR 	R1, [R0, #8]
						LSL 	R1, R1, R4
						LSR 	R1, R1, #1
						ADD 	R5, #4
						LDR		R6, [R5]
						ORR		R1, R6
						STR		R1, [R5]					
CURSORUPDATED			LDR 	R0,=XCOOR
						LDRB 	R1, [R0]
						LDR     R2,=XCOORPREV
						STRB	R1,	[R2]
						LDR 	R0,=YCOOR
						LDRB 	R1, [R0]
						LDR     R2,=YCOORPREV
						STRB	R1,	[R2]
						POP 	{LR}
						POP 	{R0-R7}
						BX  	LR

MINEUPDATE				PUSH 	{R0-R6}
						PUSH 	{LR}
						
						LDR 	R0, =OBJECTS
						ADD 	R0, #12
						
GETMINE					LDRB 	R5, [R0, #2]
						CMP 	R5, #3
						BNE 	MINEUPDATED
						LDRB 	R1, [R0]     ; X
						LDRB 	R2, [R0, #1] ; Y
						LSL		R1, #2
						LDR 	R6, =MEMORY_ADDRESS
						LDR 	R3, [R6, R1]
						MOV 	R4, #0x1
						LSL 	R4, R2
						ORR 	R3, R4
						STR 	R3, [R6, R1]
						ADD 	R0, #3
						B 		GETMINE
MINEUPDATED			    POP  	{LR}
						POP  	{R0-R6}
						BX   	LR
						
CLEARALL				PUSH 	{LR}
						BL   	CLEARSCREEN
						POP 	{LR}
						BX 		LR
						
CLEARBOUND				PUSH	{R0-R2}
						PUSH 	{LR}
						LDR 	R2, =MEMORY_ADDRESS
						MOV		R0, #64
						MOV 	R1, #0
CLEAR					STR 	R1, [R2] , #4
						SUB 	R0, #1
						CMP 	R0, #0
						BNE 	CLEAR
						POP 	{LR}
						POP		{R0-R2}
						BX 		LR											

COUNTERUPDATE			PUSH	{R0,R1,R2,R3,R4,R5,LR}
						LDR	 	R0, =COUNTERVAL
						LDR  	R6, [R0]
						LDR  	R1, =numbers
						MOV  	R0, #10
						UDIV 	R2, R6, R0
						MUL  	R3, R2, R0
						SUB  	R3, R6, R3
						MOV  	R0, #7
						MUL  	R2, R0
						ADD  	R4, R1, R2
						MUL 	R3, R0
						ADD  	R5, R1, R3
						BL   	WCOUNT
						POP 	{R0,R1,R2,R3,R4,R5,LR}
						BX		LR

P1WON					PUSH	{R0,R1,R2,LR}
						
						
						LDR 	R1,=GPIO_PORTA_DATA
						LDR		R0,[R1]
						BIC		R0,	#0x40
						STR		R0,[R1]

						MOV 	R2, #0x20
						BL  	WRITE
						
						MOV 	R2, #0x40		
						BL		WRITE
						MOV		R2, #0x80
						BL  	WRITE
						
						LDR 	R1,=GPIO_PORTA_DATA			
						LDR 	R0,[R1]
						ORR		R0,#0x40
						STR		R0,[R1]
						
						LDR  	R0,=WIN1
						MOV	 	R1,#504
P1WIN					LDR  	R2,[R0],#1
						BL   	WRITE
						SUBS 	R1,#1
						BNE  	P1WIN
						
						MOV		R0, #20
SHOW1					BL		DELAY100
						SUBS	R0, #1
						BNE		SHOW1
						
						BL		CLEARSCREEN
						BL		CLEARBOUND
						BL		LINEINIT
						BL		MINEUPDATE
						BL		SHIPUPDATE
						BL		WRITESCREEN
						
						MOV		R0, #20
SHOW11					BL		DELAY100
						SUBS	R0, #1
						BNE		SHOW11
						
						POP 	{R0,R1,R2,LR}
						BX		LR
P2WON					PUSH	{R0,R1,R2,LR}



						LDR 	R1,=GPIO_PORTA_DATA
						LDR		R0,[R1]
						BIC		R0,	#0x40
						STR		R0,[R1]

						MOV 	R2, #0x20
						BL  	WRITE
						
						MOV 	R2, #0x40		
						BL		WRITE
						MOV		R2, #0x80
						BL  	WRITE
						
						LDR 	R1,=GPIO_PORTA_DATA			
						LDR 	R0,[R1]
						ORR		R0,#0x40
						STR		R0,[R1]
						
						LDR  	R0,=WIN2
						MOV	 	R1,#504
P2WIN					LDR  	R2,[R0],#1
						BL   	WRITE
						SUBS 	R1,#1
						BNE  	P2WIN
						
						MOV		R0, #10
SHOW2					BL		DELAY100
						SUBS	R0, #1
						BNE		SHOW2
						
						BL		CLEARSCREEN
						BL		CLEARBOUND
						BL		LINEINIT
						BL		MINEUPDATE
						BL		SHIPUPDATE
						BL		WRITESCREEN
						
						MOV		R0, #20
SHOW22					BL		DELAY100
						SUBS	R0, #1
						BNE		SHOW22
						
						
						POP 	{R0,R1,R2,LR}
						BX		LR


DONE					LDR 	R1,=ADC0_IM		;enable adc interrupts
						LDR 	R2,=ADC1_IM
						MOV		R0,#0X1
						STR		R0,[R1]
						STR		R0,[R2]
						POP 	{R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,LR}
						BX 		LR