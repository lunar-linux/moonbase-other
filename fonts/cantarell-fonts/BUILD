OPTS+=" --with-configdir=/etc/fonts/conf.avail" &&

default_build &&

install -m644 $SCRIPT_DIRECTORY/21-cantarell-hinting.conf /etc/fonts/conf.avail/21-cantarell-hinting.conf

mkfontscale $DRO &&
mkfontdir $DRO
