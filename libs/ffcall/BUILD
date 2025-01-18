if [[ $(arch) == x86_64 ]]; then
  OPTS+=" --with-pic"
fi &&

OPTS+=" --mandir=/usr/share/man --disable-static" &&

default_config &&

sedit "s:datadir)/html:datadir)/doc/$MODULE:g" \
      {avcall,callback,trampoline,vacall}/Makefile \
      callback/{trampoline,vacall}_r/Makefile &&

default_make
