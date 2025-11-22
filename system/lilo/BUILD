# gcc 10 fix -fcommon
export CPPFLAGS+=" -fcommon"
sedit 's;strip lilo.static;& || true;' src/Makefile &&
# We don't need to install everything so we call the targets we require
make test &&
make -C src all &&

prepare_install &&

for i in src scripts man dos; do
  make -C $i install
done &&

gather_docs CHANGELOG COPYING NEWS README TODO
