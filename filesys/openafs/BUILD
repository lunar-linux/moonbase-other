(
  patch_it $SOURCE_CACHE/$SOURCE2 0		&&
  ./regen.sh					&& 

  ./configure 	--prefix=/usr			\
  		--with-afs-sysname=i386_linux24	\
		--sysconfdir=/usr/vice/etc	\
		--localstatedir=/var		\
		--infodir=/usr/share/info	\
		--mandir=/usr/share/man		\
		$OPTS				&&
  make all_nolibafs				&&
  prepare_install				&&
  make install_nolibafs				&&

  # Creating needed dirs if not existing
  if [ ! -d /usr/vice ]; then
	mkdir -p /usr/vice/etc
  fi &&

  if [ ! -d /usr/vice/cache ]; then
	mkdir -p /usr/vice/cache
 	chmod 0700 /usr/vice/cache
  fi &&	

  if [ ! -d /afs ]; then
  	mkdir /afs
	chmod 755 /afs
  fi &&	

  # Installing some db files
  install -p -m 644 $SCRIPT_DIRECTORY/etc/openafs-CellServDB /usr/vice/etc/CellServDB &&
  install -p -m 644 $SCRIPT_DIRECTORY/etc/openafs-SuidCells /usr/vice/etc/SuidCells &&
  install -p -m 644 $SCRIPT_DIRECTORY/etc/openafs-cacheinfo /usr/vice/etc/cacheinfo &&
  install -p -m 755 $SCRIPT_DIRECTORY/etc/openafs-afsmodname /usr/vice/etc/afsmodname &&

  # Copy conf and rc files
  sedit "s;^OPTIONS=.*;OPTIONS=\"\$MEDIUM -nosettime\";" $SOURCE_DIRECTORY/src/afsd/afs.conf.linux
  install -p -m 644 $SOURCE_DIRECTORY/src/afsd/afs.conf.linux /etc/config.d/afs	 &&
  sedit "s;SYSCNF=.*;SYSCNF=/etc/config.d/afs;" $SOURCE_DIRECTORY/src/afsd/afs.rc.linux	&&
  install -p -m 755 $SOURCE_DIRECTORY/src/afsd/afs.rc.linux /etc/init.d/afs &&

 
  message ""
  message "Before starting AFS remember to add your AFS cell"
  message "to /usr/vice/etc/ThisCell. You might also want to"
  message "change the cache size which is by default 100Mb"
  message "in /usr/vice/etc/cacheinfo."
  message ""
 
) > $C_FIFO 2>&1
  
