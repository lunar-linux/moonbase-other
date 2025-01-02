./autogen.sh &&

OPTS+=" --with-pic"
export CPPFLAGS="-fpermissive"
default_build &&

# These two are overlooked during install
install -Dt /usr/include/FTGL -m644 src/FT{Face,Size}.h
