(
cd $SOURCE_DIRECTORY                                                                                           &&
sedit "s/INSTALLDIR = \/usr\/local\/etc/INSTALLDIR = \/etc\/logcheck/"                                Makefile &&
sedit "s/usr\/local\/bin/usr\/bin/"                                                                   Makefile &&
sedit "s/INSTALLDIR_SH = \/usr\/local\/etc/INSTALLDIR_SH = \/usr\/bin/"                               Makefile &&
sedit "s/usr\/local\/etc\/tmp/var\/logcheck/"                                                         Makefile &&

cd $SOURCE_DIRECTORY/systems/linux                                                                             &&
sedit "s/usr\/local\/bin\/logtail/usr\/bin\/logtail/"                                              logcheck.sh &&
sedit "s/usr\/local\/etc\/tmp/var\/logcheck/"                                                      logcheck.sh &&
sedit "s/usr\/local\/etc\/logcheck.hacking/etc\/logcheck\/logcheck.hacking/"                       logcheck.sh &&
sedit "s/usr\/local\/etc\/logcheck.violations/etc\/logcheck\/logcheck.violations/"                 logcheck.sh &&
sedit "s/usr\/local\/etc\/logcheck.violations.ignore/etc\/logcheck\/logcheck.violations.ignore/"   logcheck.sh &&
sedit "s/usr\/local\/etc\/logcheck.ignore/etc\/logcheck\/logcheck.ignore/"                         logcheck.sh &&

cd $SOURCE_DIRECTORY            &&
if [ ! -d /etc/logcheck ]; then
   mkdir -p /etc/logcheck
fi                              &&
prepare_install                 &&
make linux

) > $C_FIFO 2>&1
