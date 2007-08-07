(

  unpack $SOURCE2                                          &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-4.1-crond.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-4.1-Makefile.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-4.1-pathnames.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-4.1-vfork.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-4.1-saveuid.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-4.1-man.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-4.1-uninitialized.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-4.1-no_mail_validate.patch 1 &&
  patch_it $MODULE-patches-$PVERSION/$MODULE-4.1-permfix.patch 1 &&

  if module_installed Linux-PAM; then
        patch_it $MODULE-patches-$PVERSION/$MODULE-$VERSION-pam.patch 1 
        patch_it $MODULE-patches-$PVERSION/$MODULE-$VERSION-log_facility.patch 1
  fi &&

  make                                                    &&
  prepare_install                                         &&
  make    install                                         &&

  install -c -m 755 $MODULE-patches-$PVERSION/run-parts /usr/bin/  &&

  mkdir -p /etc/cron.daily /etc/cron.hourly  /etc/cron.d\
           /etc/cron.monthly /etc/cron.weekly             &&

  if [ ! -f /etc/crontab ]; then
    install -c -m 600 $SCRIPT_DIRECTORY/crontab /etc/crontab
  fi
  gather_docs $SCRIPT_DIRECTORY/crontab

) > $C_FIFO 2>&1
