
sedit 's:-Werror:-Wno-error:g' cmake/compilers/GNU.cmake &&
sedit 's:-Wfatal-errors:-Wno-error:' cmake/compilers/GNU.cmake &&

default_cmake_build &&

# copied the pc from debian, they don't provide it upstream
cat $SCRIPT_DIRECTORY/tbb.pc.in | sed "s/%VERSION%/${VERSION}/" > tbb.pc &&

make &&
prepare_install &&
install -Dm0644 tbb.pc /usr/lib/pkgconfig/
