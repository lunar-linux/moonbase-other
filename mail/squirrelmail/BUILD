(

  prepare_install

  PREFIX=/var/squirrelmail
  DATADIR=$PREFIX/data
  ATTCHDIR=$PREFIX/attach

  mkdir -p $DATADIR $ATTCHDIR           &&

  for STUFF in index.php class config data functions help images include index.php locale plugins po src themes ; do
    verbose_msg "Copying: $STUFF"
    cp -a $STUFF $PREFIX
  done                                  &&
  if [ ! -f $PREFIX/config/config.php ] ; then
    cp $PREFIX/config/config_default.php $PREFIX/config/config.php
  fi                                    &&
  chown -R nobody:nogroup $DATADIR      &&
  chgrp -R nogroup $ATTCHDIR            &&
  chmod 730 $ATTCHDIR

) > $C_FIFO 2>&1
