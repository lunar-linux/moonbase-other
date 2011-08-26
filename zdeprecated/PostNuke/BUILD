(

  prepare_install

  PREFIX=/var/postnuke
  mkdir -p $PREFIX                       &&

  for STUFF in $( ls html | grep -v install ) ; do
    verbose_msg "Copying: $STUFF"
    cp -a html/$STUFF $PREFIX
  done                                   &&

  mkdir -p /usr/share/doc/$MODULE           &&
  cp -f phoenix-sql/Phoenix.sql /usr/share/doc/$MODULE/ &&
  sedit "s:$pnconfig['encoded'] = '1';:$pnconfig['encoded'] = '0';:" $PREFIX/config.php

) > $C_FIFO 2>&1
