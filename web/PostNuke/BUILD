(

  prepare_install

  PREFIX=/var/postnuke
  mkdir -p $PREFIX                      &&

  for STUFF in $( ls html | grep -v install ) ; do
    verbose_msg "Copying: $STUFF"
    cp -a html/$STUFF $PREFIX
  done                                  &&

  mkdir -p /usr/share/doc/$MODULE       &&
  cp phoenix-sql/Phoenix-0.7.2.6.sql /usr/share/doc/$MODULE/ &&
  sedit "s:$pnconfig['encoded'] = '1';:$pnconfig['encoded'] = '0';:" $PREFIX/config.php

) > $C_FIFO 2>&1
