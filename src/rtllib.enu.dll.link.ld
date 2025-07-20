SEARCH_DIR(".\")
INPUT(
.\rtllib.enu.dll.o
.\rtllib.enu.dll.res.o
)
OUTPUT_FORMAT(pei-x86-64)
ENTRY(PASCALMAIN)
SECTIONS
{
  . = SIZEOF_HEADERS;
  . = ALIGN(__section_alignment__);
  .text  __image_base__ + ( __section_alignment__ < 0x1000 ? . : __section_alignment__ ) :
  {
    __text_start__ = . ;
    *(.init)
    *(.text .stub .text.* .gnu.linkonce.t.*)
    *(SORT(.text$*))
  }
  .rsrc BLOCK(__section_alignment__) :
  {
    *(.rsrc)
    *(SORT(.rsrc$*))
  }
}
