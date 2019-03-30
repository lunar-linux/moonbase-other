OPTS+=" --docdir=/usr/share/doc"

#default_config &&

./configure --prefix=/usr $OPTS &&
make &&
prepare_install &&
make docdir=/usr/share/doc/indent install &&

echo -e "#!/bin/sh\n\nindent -npro -kr -i8 -ts8 -sob -l80 -ss -ncs "$@"\n" > lindent &&

install -m0755 lindent /usr/bin/
