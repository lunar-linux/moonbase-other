bad_flags -fomit-frame-pointer &&

OPTS+=" --enable-pthread --enable-shared"

default_build &&

make install-doc &&

# Some apps look for ruby.pc like graphviz
ln -sf ruby-${VERSION%.*}.pc /usr/lib/pkgconfig/ruby.pc
