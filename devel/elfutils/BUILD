(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  patch_it $SOURCE_CACHE/$SOURCE3 1  &&
  sedit "s/-Werror//g" lib/Makefile.in libelf/Makefile.in  &&

  ./configure --prefix=/usr              \
              --program-prefix="eu-"     \
              --localstatedir=/var       \
	      --sysconfdir=/etc          \
	      --libdir=/usr/lib          \
	      --includedir=/usr/include  \
	      --infodir=/usr/share/info  \
              --enable-shared            \
	      --mandir=/usr/share/man   && 
  
  default_make
 
) > $C_FIFO 2>&1

