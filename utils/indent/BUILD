sedit '/FILE/d' src/indent.h &&
sedit 's:docdir = .*:docdir = /usr/share/doc/indent:' doc/Makefile.in &&

default_build &&
echo -e "#!/bin/sh\n\nindent -npro -kr -i8 -ts8 -sob -l80 -ss -ncs "$@"\n" > lindent &&
install -m0755 lindent /usr/bin/
