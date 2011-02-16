(

  sed -i -e "s:^\(PREFIX?=\).*:\1/usr:" -e "s:^\(BINDIR?=\).*:\1/usr/bin:" -e "s:^\(DOCDIR?=\).*:\1/usr/share/doc/sz81:" -e "s:^\(PACKAGE_DATA_DIR?=\).*:\1/usr/share/sz81:" Makefile &&

  default_build

) > $C_FIFO 2>&1
