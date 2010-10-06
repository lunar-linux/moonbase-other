(

  if [ "`lvu version Python`" == "2.7" ]; then
#bug report link http://bugzilla-attachments.gnome.org/attachment.cgi?id=166409
    sedit "s:with LibtoolImporter:with LibtoolImporter(None,None):" giscanner/xmlwriter.py 
    sedit "s:with LibtoolImporter:with LibtoolImporter(None,None):" giscanner/sourcescanner.py 
  fi &&

  default_build

) > $C_FIFO 2>&1
