	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSaveSectionOffsets:: @ 85CDC00
	.2byte 0, 0xF2C
	.2byte 0, 0xF80
	.2byte 0xF80, 0xF80
	.2byte 0x1F00, 0xF80
	.2byte 0x2E80, 0xF08
	.2byte 0, 0xF80
	.2byte 0xF80, 0xF80
	.2byte 0x1F00, 0xF80
	.2byte 0x2E80, 0xF80
	.2byte 0x3E00, 0xF80
	.2byte 0x4D80, 0xF80
	.2byte 0x5D00, 0xF80
	.2byte 0x6C80, 0xF80
	.2byte 0x7C00, 0x7D0
