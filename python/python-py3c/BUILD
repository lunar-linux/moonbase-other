sed -i 's/install: py3c.pc/install:/' Makefile &&
make prefix=/usr py3c.pc &&

sedit 's:/usr/local:/usr:' py3c.pc &&
sedit 's|#Requires: python3|Requires: python3|' py3c.pc &&

prepare_install &&
make prefix=/usr install &&

default_python3_build
