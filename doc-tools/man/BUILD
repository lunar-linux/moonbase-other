(

  cat $SCRIPT_DIRECTORY/whatis.patch | patch -p1 &&
  ./configure  -d  &&
  make             &&
  prepare_install  &&
  make    install
# sedit is not needed because groff is back at 1.17.2.  If we go back to > 1.17.2
# then this sedit will probably be needed again.
# sedit 's/\/usr\/bin\/less -is$/\/usr\/bin\/less -isR/g' /usr/share/misc/man.conf

) > $C_FIFO 2>&1
