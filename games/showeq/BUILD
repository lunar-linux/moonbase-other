(
  sed -i -e "/^#include <qdatetime.h>/ { 
             i#include <ctype.h>         
  }" src/bazaarlog.cpp                   &&
  sedit 's,^/\*260\*/.*,/*260*/ uint8_t unknown260[31];,' src/everquest.h &&
  sedit 's,^/\*5044\*/.*,/*5044*/ uint8_t unknown4380[5348];  // *** Placeholder,' src/everquest.h &&
            
  make -f Makefile.dist &&
  ./configure  --prefix=/usr			\
	       --sysconfdir=/etc/showeq		\
               --localstatedir=/var  		\
               --infodir=/usr/share/info	\
	       --mandir=/usr/share/man		\
               --with-qt-dir=/opt/lunar/qt/3	\
               $OPTS				&&
   default_make

) > $C_FIFO 2>&1
