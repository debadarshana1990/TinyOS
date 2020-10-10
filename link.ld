ENTRY(loader) /* Name of the Entry Loader */
SECTIONS 
{
	. =0x00100000;
	.text ALIGN(0x1000):
	{
		*(.text)
	}
	.rodata ALIGN(0x100):
	{
		*(.rodata*)
	}
	.data ALIGN(0x100):
	{
		*(.data)
	}
	.bss ALIGN(0x100):
	{
		*(COMMON)
		*(.bss)
	}
}
