(
    default_config &&
    sedit "s,-I\$(includedir)/panel-2.0,-I/opt/lunar/gnome/2/include -I/opt/lunar/gnome/2.4/include/panel-2.0," applet/Makefile &&
    make  &&
    prepare_install &&
    make install
) > $C_FIFO
