(

   sed -i "s/GST_MAJORMINOR=0.7/GST_MAJORMINOR=0.8/g" configure configure.in &&
   patch_it $SOURCE_CACHE/$SOURCE3 0              &&
   ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make                                  &&

if module_installed gnomesu; then
  cp $SOURCE_CACHE/$SOURCE2 /usr/share/applications
fi

) > $C_FIFO 2>&1

