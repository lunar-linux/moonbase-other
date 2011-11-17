(

    # make sure all required groups are present:
    add_priv_group usb
    add_priv_group cdrw
    add_priv_group disk
    add_priv_group cdrom
    add_priv_group floppy
    add_priv_group tape
    add_priv_group audio
    add_priv_group video
    add_priv_group lp
    add_priv_group tty
    add_priv_group dialout
    add_priv_group kmem
    add_priv_group plugdev

    # create static nodes dir if missing
    mkdir -p /lib/udev/devices  &&

    patch_it $SOURCE2 0  &&

    sedit "/^pkgconfigdir/s;.*;pkgconfigdir = /usr/lib/pkgconfig;" Makefile.in  &&
    sedit '/$(DESTDIR)$(prefix)\/lib\/ConsoleKit/s;$(DESTDIR)$(prefix);/usr;g' Makefile.in  &&
    sedit 's:\$(datadir)/pkgconfig:/usr/lib/pkgconfig:g' Makefile.in &&
    sedit "s:enable_introspection=yes:enable_introspection=no:" configure  &&

    find $SOURCE_DIRECTORY/rules -type f -name '*.rules' -exec sed -i 's/uucp/dialout/g' {} \;  &&

# Borrowing from the Arch folks to avoid any user related permissions.
#    echo "# Bluetooth rfkill switch" >> rules/gentoo/40-gentoo.rules  &&
#    echo 'KERNEL=="rfkill", ENV{ACL_MANAGE}="1", GROUP="uucp"' >> rules/gentoo/40-gentoo.rules  &&
#    mv -f rules/gentoo/40-gentoo.rules rules/gentoo/40-lunar.rules  &&

    if [ "$WIPE_NET_DEV" == "y" ] ; then
       rm -f /etc/udev/rules.d/70-persistent-{cd,net}.rules
    fi  &&

    ./configure  --prefix=/                 \
                 --sbindir=/sbin            \
                 --libdir=/lib              \
                 --libexecdir=/lib/udev     \
                 --mandir=/usr/share/man    \
                 --includedir=/usr/include  \
                 --datarootdir=/usr/share   \
                 --sysconfdir=/etc          \
                 --enable-udev_acl          \
                 --with-pci-ids-path=/usr/share/pci.ids  &&
    sedit '/^GIRTYPELIBDIR/s;\${exec_prefix};/usr;' Makefile  &&
    default_make  &&

    # install the init.d script
    # we cannot use automagic install via coretools
    # since the udev script would be linked from rcX.d
    # and would interfere with boot/{reboot,halt}
    mkdir -p /etc/udev/rules.d /etc/udev/scripts.d  &&

    install -m755 ${SCRIPT_DIRECTORY}/udev /etc/init.d  &&

    install -m755 ${SOURCE_CACHE}/${SOURCE3} \
                  /etc/udev/scripts.d/raid-devfs.sh  &&

    ln -sf /lib/udev/udevd /sbin/udevd

) > $C_FIFO 2>&1
