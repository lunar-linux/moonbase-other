(
   rm -fr /usr/lib/mono/1.0/ICSharpCode.SharpZipLib.dll &&
   cp $SOURCE_CACHE/$SOURCE2 /usr/lib/mono/1.0    &&
   ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make                   

) > $C_FIFO 2>&1
