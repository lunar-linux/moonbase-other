(
  # Change location of emacs games
  sedit "s;^gamedir=.*;gamedir='/var/lib/emacs/games';" configure  &&
  
  # Fix so installwatcher doesn't trigger on info-files
  sedit 's;\(\-chmod \-R.*\)${infodir};\1;' Makefile.in  &&

  #combreloc linker options fscks up things here
  LDFLAGS=`echo $LDFLAGS | sed "s/-z combreloc//" | sed "s%-Wl,-O1%%"`
  default_build

) > $C_FIFO 2>&1
