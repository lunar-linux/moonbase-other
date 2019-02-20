# file seems to have changed its _whitespace_ syntax for 64 bit shared objects
sedit 's:file_magic ELF \[0-9\]\[0-9\]\*-bit \[LM\]SB (shared object|dynamic lib ):file_magic ELF [0-9][0-9]*-bit [LM]SB *(shared object|dynamic lib ):' configure &&

CFLAGS+=" -fPIC"
OPTS+=" --disable-static"

default_build
