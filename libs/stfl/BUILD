if ! in_depends $MODULE swig; then
   sedit 's:FOUND_SWIG = .*:FOUND_SWIG = 0:' Makefile.cfg
fi &&

default_make &&

rm -f /usr/lib/libstfl.a
