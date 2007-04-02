(
   [ -f /etc/profile.d/xfce4.rc ] && . /etc/profile.d/xfce4.rc

    prepare_install &&
    chown -R root.root . &&
    mkdir -p /usr/share/icons &&
    cp -Rpu * /usr/share/icons/

) > $C_FIFO 2>&1
