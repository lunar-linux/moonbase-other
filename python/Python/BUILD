(
  OLDV=$(installed_version $MODULE)

  if [ ${OLDV:0:3} != ${MAJOR_VERSION} ] ; then
        set_module_config OLD_VER "${OLDV:0:3}"
  fi &&

  sedit "s:-O3:-O2:g" configure &&

  OPTS="$OPTS --enable-shared" &&

  default_build &&
  
  install -d /usr/lib/python$MAJOR_VERSION &&
  install -m755 $SOURCE_DIRECTORY/Tools/i18n/msgfmt.py \
		$SOURCE_DIRECTORY/Tools/i18n/pygettext.py \
		/usr/lib/python$MAJOR_VERSION/  &&
  gather_docs Misc/*

) > $C_FIFO 2>&1

