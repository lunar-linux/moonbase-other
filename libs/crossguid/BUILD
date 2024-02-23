
cmake . -DCMAKE_CXX_FLAGS="$CXXFLAGS -ffat-lto-objects" -DCMAKE_BUILD_TYPE=Release -Wno-dev &&
make

prepare_install &&
install -D -m644 libxg.a /usr/lib/libxg.a &&
install -D -m644 Guid.hpp /usr/include/Guid.hpp
