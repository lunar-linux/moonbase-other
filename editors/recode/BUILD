cp /usr/share/automake/config.sub $SOURCE_DIRECTORY &&

#export SED="/bin/sed" &&
export max_cmd_len=32768 &&

OPTS+=" --without-included-gettext" &&

default_build &&

install -m0755 $SCRIPT_DIRECTORY/dos2unix /usr/bin/ &&
install -m0755 $SCRIPT_DIRECTORY/unix2dos /usr/bin/
