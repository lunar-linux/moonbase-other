(
    add_priv_user haldaemon:haldaemon -d /dev/null -s /bin/false &&
   
   ./configure  --prefix=/usr                      \
                --build=$BUILD                     \
                --sysconfdir=/etc                  \
                --localstatedir=/var               \
                --infodir=/usr/share/info          \
                --mandir=/usr/share/man            \
		--disable-docbook-docs	           \
                --enable-sysfs-carrier		   \
                --enable-fstab-sync                \
                --enable-hotplug-map               \
                --with-pid-file=/var/run/hald.pid  \
                $OPTS                             &&
    default_make				  &&
    cp $SOURCE_CACHE/$SOURCE2 /usr/share/applications 

) > $C_FIFO 2>&1
