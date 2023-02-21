sed -e '/xine_set_flags/s/XINE_PROTECTED//' -i include/xine.h &&

# We use external dvdnav because the internal cannot decrypt DVD
OPTS+=" --with-external-dvdnav --enable-antialiasing"

default_build
