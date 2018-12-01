./configure --prefix=/usr \
            $OPTS src &&

cd src &&

default_config &&

# fixes; gcc: error: unrecognized option '-R'
sedit "s:-R/:-L/:g" cflags.h Makefile gllib/Makefile &&

sedit 's,http://www.lisp.org/HyperSpec/,http://www.lispworks.com/reference/HyperSpec/,g' config.lisp &&

default_make
