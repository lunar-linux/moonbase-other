(
  # Change location of emacs games
  OPTS+=" --program-transform-name='s/ctags*/etags/'"
  sedit "s;^gamedir=.*;gamedir='/var/lib/emacs/games';" configure  &&

  # Fixes an incompatibility with glibc-2.16
  sedit '/gets is a/d' lib/stdio.in.h &&

  #combreloc linker options fscks up things here
  LDFLAGS=`echo $LDFLAGS | sed "s/-z combreloc//" | sed "s%-Wl,-O1%%"`
  default_build

) > $C_FIFO 2>&1
