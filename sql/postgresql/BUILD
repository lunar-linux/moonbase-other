(

  ./configure  --prefix=/usr  \
               $OPTS         &&

  default_make               &&

# This gives postgresql some additional things like text search,
# some dbase related utils to name a few.
# See /usr/share/doc/postgresql/contrib for more info.

  cd contrib                 &&
  make all                   &&
  make install

) > $C_FIFO 2>&1
