(

# Just another gcc/glibc adjustment.
  sedit "s:eol = strchr (var, 0);:eol = (char *)strchr (var, 0);:" tools/makedep/cppsetup.cpp &&

  ./configure --prefix=/usr   \
              $OPTS          &&
# it has some outdated document tags and this fixes some of them
  if in_depends $MODULE doxygen ; then
    doxygen -u docs/docs.mak
  fi
# end

# Its make process is rather brain dead, you have to specify something.
  make all        &&
  prepare_install &&
  make install
# end

) > $C_FIFO 2>&1
