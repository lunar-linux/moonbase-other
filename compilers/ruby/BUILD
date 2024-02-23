export CFLAGS="${CFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"
export CXXFLAGS="${CXXFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"

OPTS+=" --enable-pthread --enable-shared --disable-rpath"

# Hack to fix the install with ruby already installed before build
prepare_install &&

default_build &&

make install-doc &&

# Some apps look for ruby.pc like graphviz
ln -sf ruby-${VERSION%.*}.pc /usr/lib/pkgconfig/ruby.pc
