(
 
./autogen.sh    --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                --disable-werror                  \
                $OPTS                             &&
    default_make

cp $SCRIPT_DIRECTORY/galeon ${GNOME26_PREFIX:-/usr}/bin
  
) > $C_FIFO 2>&1
