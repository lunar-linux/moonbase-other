(

# A gcc-4.x.x twiddle here.
  sedit 's:tion(const char \*name):tion(char \*name):' src/filter/pfspanoramic.cpp &&

  if module_installed qt3 ; then
    . /etc/profile.d/qt3.rc
  else
    OPTS="$OPTS --disable-qt"
  fi &&

  default_build

) > $C_FIFO 2>&1
