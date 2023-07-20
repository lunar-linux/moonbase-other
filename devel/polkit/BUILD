OPTS+=" -D examples=false \
        -D gtk_doc=false \
        -D man=false \
        -D os_type=redhat \
        -D session_tracking=libsystemd-login \
        -D tests=false"

default_meson_build &&

#Error opening rules directory, needs this permission
chmod 755 /usr/share/polkit-1/rules.d &&
chmod 755 /etc/polkit-1/rules.d
