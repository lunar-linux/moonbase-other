OPTS+=" -DCMAKE_INSTALL_LIBDIR=lib" &&

cargo build --release --locked --all-features &&

default_cmake_build &&

install -Dm755 $SOURCE_DIRECTORY/target/release/tree-sitter /usr/bin/
