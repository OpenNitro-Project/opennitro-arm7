/* Cannot change output format to "binary" at this point.
 * Instead, generate a "corrupt" ELF (no header area) and convert
 * using arm-none-eabi-objcopy -O binary ndsbiosa7 ndsbiosa7.bin */

MEMORY {
	BIOS (RWX) : ORIGIN = 0x00000000, LENGTH = 0x4000
}

SECTIONS {
	.text :
	{
		. = 0x00001164;
		KEEP(*(.text.BiosSafeShim));
		. = 0x00001204;
		KEEP(*(.text.IPCWait));
		. = 0x00001FB4;
		KEEP(*(.text.Blowfish_FeistelRound));
		. = 0x00001FFA;
		KEEP(*(.text.Blowfish_Encrypt64));
		. = 0x000020BC;
		KEEP(*(.text.Blowfish_Decrypt64));
		. = 0x00002D78;
		KEEP(*(.text.InitARM7Stacks));
		. = 0x000030E4;
		KEEP(*(.text.CpuFastCopy));
		*(.text.*);
	} > BIOS =0

	/* Need to figure out exactly where to put
	 * this... */
	.rodata :
	ALIGN(4)
	{
		KEEP(*(.rodata .rodata.*));
		. = ALIGN(4096);
	} > BIOS =0

	/DISCARD/ :
	{
		*(*)
	}
}

