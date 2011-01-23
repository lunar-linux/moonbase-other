(
  patch_it $SOURCE3 1        &&
  patch_it $SOURCE4 1        &&
  ./regen.sh                && 

  case `uname -s -r` in
    [lL]inux\ 2.4.*) OPTS+=" --with-afs-sysname=i386_linux24"
      ;;
    [lL]inux\ 2.6.*) OPTS+=" --with-afs-sysname=i386_linux26"
      ;;
    *) message "Unsupported OS!"
      exit -1
      ;;
  esac

  if [ ! -e /lib/modules/`uname -r`/build/include/linux/version.h ]; then
    message "Can't find '/lib/modules/`uname -r`/build/include/linux/version.h'!"
    message "You need to have the source for your running kernel online and configured!"
    exit -1
  fi
  OPTS+=" --with-linux-kernel-headers=/lib/modules/`uname -r`/build"

  ./configure         --prefix=/usr                        \
                --sysconfdir=/usr/vice/etc        \
                --localstatedir=/var                \
                --infodir=/usr/share/info        \
                --mandir=/usr/share/man                \
                $OPTS                                &&
  make all_nolibafs                                &&
  prepare_install                                &&
  make install_nolibafs                                &&

  # Creating needed dirs if not existing
  if [ ! -d /usr/vice ]; then
        mkdir -p /usr/vice/etc
  fi &&

  if [ ! -d /usr/vice/cache ]; then
        mkdir -p /usr/vice/cache &&
         chmod 0700 /usr/vice/cache
  fi &&        

  if [ ! -d /afs ]; then
          mkdir /afs &&
        chmod 755 /afs
  fi &&        

  # Installing some db files
  install -p -m 644 $SOURCE_CACHE/CellServDB /usr/vice/etc/CellServDB &&

  # Ugly but we need a new cellservdb everytime we run lin
  rm $SOURCE_CACHE/CellServDB &&

  install -p -m 644 $SOURCE_DIRECTORY/src/packaging/HP-UX/files/usr/vice/etc/cacheinfo /usr/vice/etc/cacheinfo &&
  touch /usr/vice/etc/SuidCells &&

  # Copy conf and rc files
  sedit "s;^OPTIONS=.*;OPTIONS=\"\$MEDIUM -nosettime\";" $SOURCE_DIRECTORY/src/afsd/afs.conf.linux &&
  install -p -m 644 $SOURCE_DIRECTORY/src/afsd/afs.conf.linux /etc/config.d/afs &&
  sedit "s;^SYSCNF=.*;SYSCNF=/etc/config.d/afs;" $SOURCE_DIRECTORY/src/afsd/afs.rc.linux &&
  install -p -m 755 $SOURCE_DIRECTORY/src/afsd/afs.rc.linux /etc/init.d/afs

) > $C_FIFO 2>&1
  
