OPTS+=" --enable-thread-safety --enable-nls --enable-integer-datetimes" &&

default_build &&

# This gives postgresql some additional things like text search,
# some dbase related utils to name a few.
# See /usr/share/doc/postgresql/contrib for more info.
cd contrib  &&
make all    &&
make install
