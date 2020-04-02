bad_flags -fomit-frame-pointer &&

OPTS+=" --enable-pthread --enable-shared"

# Hack to fix the install with ruby already installed before build
prepare_install &&

default_build &&

make install-doc &&

# Some apps look for ruby.pc like graphviz
ln -sf ruby-${VERSION%.*}.pc /usr/lib/pkgconfig/ruby.pc
