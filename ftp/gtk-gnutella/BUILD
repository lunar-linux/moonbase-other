(

  # shoot metaconfig in the head please:
  ./Configure -ders\
              -D gtkversion=2 \
              -D prefix=/usr \
              -D installbin=/usr/bin \
	      -D remotectrl=y &&
  default_make                &&

  /usr/bin/install -c $MODULE.desktop /usr/share/applications &&
  for i in `find . -name png`; do /usr/bin/install -c $i /usr/share/pixmaps/; done 

) > $C_FIFO 2>&1
