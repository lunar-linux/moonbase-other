(
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&

  ./regen.sh &&
  case `uname -r` in
    2.6.*) 
      kv="26"
      ;;
    2.4.*) 
      kv="24"
      ;;
    *) 
      message "Unsupported kernel version!"
      exit -1
      ;;
  esac

  case `arch` in
    x86_64)
      OPTS="$OPTS --with-afs-sysname=amd64_linux${kv}"
      ;;
    i386|i486|i586|i686|athlon)
      OPTS="$OPTS --with-afs-sysname=i386_linux${kv}"
      ;;
    *)
      OPTS="$OPTS --with-afs-sysname=`arch`_linux${kv}"
      ;;
  esac

   
  # Bad idea, this causes a POST_INSTALL problem from kernel.
  # In other words this cause openafs-driver to be built against old kernel
  #if [ ! -e /lib/modules/`uname -r`/build/include/linux/version.h ]; then
  #  message "Can't find '/lib/modules/`uname -r`/build/include/linux/version.h'!"
  #  message "You need to have the source for your running kernel online and configured!"
  #  exit -1
  #fi
  OPTS="$OPTS --with-linux-kernel-headers=/usr/src/linux"

  ./configure 	--prefix=/usr			\
		--sysconfdir=/usr/vice/etc	\
		--localstatedir=/var		\
		--infodir=/usr/share/info	\
		--mandir=/usr/share/man		\
		$OPTS				&&
  make dest_only_libafs &&
  prepare_install

) > $C_FIFO 2>&1
  
