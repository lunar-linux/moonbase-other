(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  cp -f $SCRIPT_DIRECTORY/kdm $SCRIPT_DIRECTORY/init.d/kdm  &&
  TMP="s:KDEDIR:${KDE_PREFIX:-$KDEDIR}:"                    &&
  sedit $TMP $SCRIPT_DIRECTORY/init.d/kdm                   &&

  default_build
 
) > $C_FIFO 2>&1
