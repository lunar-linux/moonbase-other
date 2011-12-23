(

   if module_installed qt4; then
    . /etc/profile.d/qt4.rc
   fi &&

   add_priv_user avahi:avahi -d /dev/null -s /bin/false &&
   add_priv_user avahi-autoipd:avahi-autoipd -d /dev/null -s /bin/false &&

# Add this missing group. It is used in /etc/dbus-1/system.d/avahi-dbus.conf
   add_priv_group netdev &&

   OPTS+=" --enable-compat-howl --enable-compat-libdns_sd --disable-gtk3 --disable-qt3 \
           --disable-stack-protector --with-distro=none --disable-monodoc" &&

    default_build

) > $C_FIFO 2>&1
