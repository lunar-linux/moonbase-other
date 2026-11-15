default_config &&
sedit 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&
sedit 's/void \*malloc()/void *malloc(size_t size)/' tests/Gtest-nomalloc.c &&
sedit '/func(s)/s/s//' tests/Gtest-nomalloc.c &&
default_make
