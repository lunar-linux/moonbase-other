(
   # add_priv_user messagebus:messagebus -d /dev/null -s /bin/false &&
   
   ./configure  --prefix=/usr                     \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=/usr/share/info         \
                --mandir=/usr/share/man           \
		--disable-docbook-docs	          \
                --enable-sysfs-carrier		  \
                --enable-fstab-sync               \
                --enable-hotplug-map              \
                --with-pid-file=/var/run/hald.pid \
                $OPTS                             &&
    default_make				  

) > $C_FIFO 2>&1
