(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  set -x                                 &&
  ./configure  --host=$BUILD             \
               --prefix=/usr             \
               --with-root-prefix=       \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --enable-elf-shlibs       \
               $OPTS                     &&
  set +x                                 &&             
  make                                   &&
  prepare_install                        &&
  make    install                        &&
  make    install-libs                   && 

if [ -L "/etc/mtab" ]; then
   cp /etc/mtab /etc/mtab.nolinkplease
   rm -f /etc/mtab
   mv /etc/mtab.nolinkplease /etc/mtab
fi					 &&

[ -x /etc/init.d/mount ] || cp $SCRIPT_DIRECTORY/init.d/mount /etc/init.d &&

if [ -e "/etc/init.d/mount.sh" ]; then
   rm -f /etc/init.d/mount.sh
fi                                           &&

for DIR in `ls -d /etc/rc*`; do
   rm -f $DIR/???mount 
   rm -f $DIR/???mount.sh
done                                         &&

ln -sf /etc/init.d/mount /etc/rcS.d/S10mount &&

if ! [ -e "/etc/rc6.d/K99mount" ]; then
        ln -s /etc/init.d/mount /etc/rc6.d/K99mount
fi                                           &&

if ! [ -e "/etc/rc0.d/K99mount" ]; then
        ln -s /etc/init.d/mount /etc/rc0.d/K99mount
fi                                           

) > $C_FIFO 2>&1
