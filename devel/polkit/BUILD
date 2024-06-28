export PYTHONDONTWRITEBYTECODE=1 &&

add_priv_group polkitd &&
add_priv_user polkitd:polkitd &&

OPTS+=" -D examples=false \
        -D gtk_doc=false \
        -D man=false \
        -D os_type=redhat \
        -D session_tracking=libsystemd-login \
        -D tests=false"

default_meson_build &&

#Error opening rules directory, needs this permission
chmod 750 /usr/share/polkit-1/rules.d &&
chmod 750 /etc/polkit-1/rules.d &&
chown polkitd:polkitd /{etc,usr/share}/polkit-1/rules.d
