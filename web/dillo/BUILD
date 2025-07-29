autoreconf -fiv &&

default_build &&
gather_docs doc/* &&

install -vDm644 -t "/usr/share/pixmaps" icons/128x128/dillo.png
install -vDm644 -t "/usr/share/applications" dillo.desktop

# provide at least english hyphenation support
# this is not fatal though
( dillo-install-hyphenation en-us || true )
