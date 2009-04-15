(

  # Don't moan in ~/.xsession-errors if /usr/bin/xsm is missing
  sedit 's:exec BINDIR/xsm:\[ -x BINDIR/xsm \] \&\& exec BINDIR/xsm:' config/Xsession.cpp  &&

  . /etc/profile.d/x11r7.rc &&

  default_build

) > $C_FIFO 2>&1
