# The default stack size on your platform is insufficient
# and must be increased to at least 16384.
ulimit -s 16384 &&

./configure --prefix=/usr --prefix=/usr --with-readline --with-ffcall $OPTS src &&

cd src &&
./makemake --prefix=/usr --with-readline --with-ffcall --with-dynamic-ffi > Makefile &&

# fixes; gcc: error: unrecognized option '-R'
sedit "s:-R/:-L/:g" cflags.h Makefile gllib/Makefile &&

sedit 's,http://www.lisp.org/HyperSpec/,http://www.lispworks.com/reference/HyperSpec/,g' config.lisp &&

default_make
