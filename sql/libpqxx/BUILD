export CXXFLAGS="${CXXFLAGS} -std=c++17"
OPTS+=" --enable-shared --disable-documentation"

default_config &&

#Prevent over linking
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make
