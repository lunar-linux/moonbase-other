(
  default_build &&
  
  install -d /usr/lib/python2.4 &&
  install -m755 $SOURCE_DIRECTORY/Tools/i18n/msgfmt.py \
		$SOURCE_DIRECTORY/Tools/i18n/pygettext.py \
		/usr/lib/python2.4/  &&
  gather_docs Misc/*

) > $C_FIFO 2>&1

