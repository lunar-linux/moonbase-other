./autogen.sh &&

CFLAGS="-I/usr/include/avahi-compat-libdns_sd"

sed 's/airport.key/\/etc\/shairplay\/airport.key/' -i src/shairplay.c &&

default_build &&

install -Dm644 airport.key /etc/shairplay/airport.key
