(

  # qca2-ossl will not compile when openssl 0.9.8i or later is installed.
  # This patch is official result of my bugreport to qca2-ossl author
  # on 24 September 2008. See that day's ML posts for details.
  # Remove this patch on next update.
  patch_it $SOURCE2 3 &&

  . /etc/profile.d/qt4.rc &&

  sedit "s/^WHICH=.*/WHICH=which/" configure &&

  ./configure &&

  default_make

) > $C_FIFO 2>&1
