sedit "9 i #include <string.h>" libs/auxfun/image.cpp &&
sedit "s:3.81:4.0:" configure &&

./configure --prefix=/usr   \
              $OPTS          &&

# it has some outdated document tags and this fixes some of them
if in_depends $MODULE doxygen ; then
  doxygen -u docs/docs.mak
fi &&

# Its make process is rather brain dead, you have to specify something.
make all        &&
prepare_install &&
make install
