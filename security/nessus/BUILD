 LIBOPTS=$LIBOPTS"--enable-release --enable-nessuspcap --enable-cipher"
 LIBNASLOPTS=""
 COREOPTS=$COREOPTS" --enable-release --enable-syslog"
 PLUGOPTS=$PLUGOPTS" --with-fetchcmd=wget"

(

 cd $SOURCE_DIRECTORY &&
 cd $MODULE-libraries &&
 OPTS=$LIBOPTS        &&
 default_config       &&
 make                 &&


 cd $SOURCE_DIRECTORY &&
 cd libnasl           &&
 OPTS=$LIBNASLOPTS    &&
 default_config       &&
 make                 &&

 cd $SOURCE_DIRECTORY &&
 cd $MODULE-core      &&
 OPTS=$COREOPTS       &&
 default_config       &&
 make                 &&

 cd $SOURCE_DIRECTORY &&
 cd $MODULE-plugins   &&
 OPTS=$PLUGOPTS       &&
 default_config       &&
 prepare_install      &&

 cd $SOURCE_DIRECTORY/$MODULE-libraries && make install &&
 cd $SOURCE_DIRECTORY/libnasl           && make install &&
 cd $SOURCE_DIRECTORY/$MODULE-core      && make install &&
 cd $SOURCE_DIRECTORY/$MODULE-plugins   && make install

) > $C_FIFO 2>&1
