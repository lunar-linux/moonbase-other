(

   ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make                                  &&
    rm -fr /usr/lib/mono/gtk-sharp/gtksourceview-sharp.dll &&
    ln -sf /usr/lib/mono/gac/gtksourceview-sharp/1.0.0.1__35e10195dab3c99f/gtksourceview-sharp.dll /usr/lib/mono/gtk-sharp/gtksourceview-sharp.dll

) > $C_FIFO 2>&1
