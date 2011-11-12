(
  patch_it $SOURCE4 1   &&
  patch_it $SOURCE5 1   &&

  ./regen.sh            &&

  case `uname -r` in
    2.6.*|3.*)
      kv="26"
      ;;
    *)
      message "Unsupported kernel version!"
      exit -1
      ;;
  esac &&

  case `arch` in
    x86_64)
      OPTS+=" --with-afs-sysname=amd64_linux${kv}"
      ;;
    i386|i486|i586|i686|athlon)
      OPTS+=" --with-afs-sysname=i386_linux${kv}"
      ;;
    *)
      OPTS+=" --with-afs-sysname=`arch`_linux${kv}"
      ;;
  esac &&

  if module_installed Linux-PAM; then
      OPTS+=" --enable-pam"
  else
      OPTS+=" --disable-pam"
  fi

  ./configure   --prefix=/usr                   \
                --sysconfdir=/etc               \
                --localstatedir=/var/lib        \
                --infodir=/usr/share/info       \
                --mandir=/usr/share/man         \
                --enable-supergroups            \
                --disable-kernel-module         \
                $OPTS                           &&
  make all_nolibafs                             &&
  prepare_install                               &&

  if [ ! -d /etc/openafs ]; then
      mkdir -p /etc/openafs/server
  fi &&

  make install_nolibafs                         &&

  # Creating needed dirs if not existing
   if [ ! -d /var/cache/openafs ]; then
        mkdir -p /var/cache/openafs &&
        chmod 0700 /var/cache/openafs
  fi &&

  # Server dirs
  if [ ! -d /var/lib/openafs ]; then
        mkdir -p /var/lib/openafs/{logs,db}
        chmod 700 /var/lib/openafs/db
        chmod 755 /var/lib/openafs/logs
  fi &&

  if [ ! -d /afs ]; then
        mkdir /afs &&
        chmod 755 /afs
  fi &&

  # Installing some db files
  if [ ! -f /etc/openafs/CellServDB ]; then
        install -p -m 644 $SOURCE_CACHE/CellServDB /etc/openafs/CellServDB
  fi &&
  install -p -m 755 $SOURCE_CACHE/$SOURCE3 /usr/sbin/killafs &&
  touch /etc/openafs/SuidCells &&

  # Default to openafs.org cell
  if [ ! -f /etc/openafs/ThisCell ]; then
      echo "openafs.org" > /etc/openafs/ThisCell
  fi &&

  # Create cacheinfo file, 200Mb size
  if [ ! -f /etc/openafs/cacheinfo ]; then
      echo "/afs:/var/cache/openafs:200000" > /etc/openafs/cacheinfo
  fi

  # Copy conf and rc files
  sedit "s;^OPTIONS=.*;OPTIONS=\"-nosettime -fakestat\";" $SOURCE_DIRECTORY/src/afsd/afs.conf.linux &&
  if [ ! -f /etc/config.d/afs ]; then
      install -p -m 644 $SOURCE_DIRECTORY/src/afsd/afs.conf.linux /etc/config.d/afs
  fi &&

  # Ugly but we need a new cellservdb everytime we run lin
  rm -f $SOURCE_CACHE/$SOURCE2

) > $C_FIFO 2>&1
