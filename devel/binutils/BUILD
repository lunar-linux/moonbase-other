(

  #Somehow I believe this might/should be logged as a bug to the glibc guys...
  sedit 's/^all: all-redirect/all: all-redirect $(MKDOC)/' \
          bfd/doc/Makefile.in &&
  ./configure  --host=$BUILD             \
               --prefix=/usr             \
	       --infodir=/usr/share/info \
               --mandir=/usr/share/man   &&
  make  tooldir=/usr          &&
  prepare_install             &&
  make  tooldir=/usr install  &&
  make  tooldir=/usr install-info

) > $C_FIFO 2>&1
