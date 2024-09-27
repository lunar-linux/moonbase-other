export PYTHONDONTWRITEBYTECODE=1 &&

OPTS+=" --enable-nls \
        --enable-integer-datetimes"

add_priv_user postgres -d /var/lib/pgsql -s /usr/bin/false -g postgres &&

default_build &&

# This gives postgresql some additional things like text search,
# some dbase related utils to name a few.
# See /usr/share/doc/postgresql/contrib for more info.
cd contrib &&
make all &&
make install
