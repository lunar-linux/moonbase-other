(
  if module_is_expired $MODULE ; then
        set_module_config OLD_VER "`installed_version $MODULE`"
  fi &&

  default_build &&
  
  install -d /usr/lib/python$VERSION &&
  install -m755 $SOURCE_DIRECTORY/Tools/i18n/msgfmt.py \
		$SOURCE_DIRECTORY/Tools/i18n/pygettext.py \
		/usr/lib/python$VERSION/  &&
  gather_docs Misc/*

) > $C_FIFO 2>&1

