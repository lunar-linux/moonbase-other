(
  unpack $SOURCE2					  &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-$VERSION-crond.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-$VERSION-Makefile.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-$VERSION-pathnames.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-$VERSION-vfork.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-$VERSION-saveuid.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-$VERSION-man.patch 1 &&

  if module_installed Linux-PAM; then
	patch_it $MODULE-patches-$PVERSION/$MODULE-$VERSION-pam.patch 1
  fi &&

  make                                                    &&
  prepare_install                                         &&
  make    install                                         &&

  install -c -m 755 $MODULE-patches-$PVERSION/run-parts /usr/bin/  &&

  mkdir -p /etc/cron.daily /etc/cron.hourly  /etc/cron.d\
           /etc/cron.monthly /etc/cron.weekly             &&

  install -c -m 600 $SCRIPT_DIRECTORY/crontab /etc/crontab

) > $C_FIFO 2>&1
