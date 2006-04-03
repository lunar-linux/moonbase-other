(

    if ( module_installed kernel-headers-2.6 ); then
      sedit "s:SG_FLAG_LUN_:SG_FLAG_UNUSED_LUN_:" hald/linux2/probing/linux_dvd_rw_utils.c
    fi  &&
    add_priv_user haldaemon:haldaemon -d /dev/null -s /bin/false  &&
   
   ./configure  --prefix=/usr                      \
                --build=$BUILD                     \
                --sysconfdir=/etc                  \
                --localstatedir=/var               \
                --infodir=/usr/share/info          \
                --mandir=/usr/share/man            \
		--disable-docbook-docs	           \
                --enable-fstab-sync                \
                --without-hotplug                  \
                --with-pid-file=/var/run/hald.pid  \
                $OPTS                             &&
    default_make				  &&

    mkdir -p /usr/share/applications &&
    cp $SOURCE_CACHE/$SOURCE2 /usr/share/applications/ 

) > $C_FIFO 2>&1
