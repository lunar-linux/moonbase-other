(

  # Fixes compilation error:
  # /usr/include/asm/posix_types.h:2:30: error: posix_types_32.h: No such file or directory
  # From 02gmake_use_iquote.diff in Debian's patches:
  # http://packages.debian.org/unstable/mail/fdm
  sedit "s:-I. -I- \$(INCDIRS):-I. -iquote. \$(INCDIRS):" GNUmakefile  &&

  export PREFIX=/usr PCRE=1 &&
  default_build

) > $C_FIFO 2>&1
