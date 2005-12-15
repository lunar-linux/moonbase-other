(

  # uses cvs build because ./autogen.sh is suggested to be run
  default_cvs_build  &&

  gather_docs doc/C* doc/fw* doc/README* doc/ReleaseNotes_${VERSION}.*

) > $C_FIFO 2>&1
