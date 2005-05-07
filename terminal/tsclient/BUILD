(
    default_config &&
    sedit "s,-I\$(includedir)/panel-2.0,-I${GNOME26_PREFIX:-/usr}/include -I${GNOME26_PREFIX:-/usr}/include/panel-2.0," applet/Makefile &&
    make  &&
    prepare_install &&
    make install
) > $C_FIFO
