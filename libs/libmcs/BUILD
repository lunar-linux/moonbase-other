(

  unset CPP

  sedit "s:-I/usr/kde/3.5/include -I/usr/qt/3/include:-I/opt/lunar/kde/3/include -I/opt/lunar/qt/3/include:" configure.ac
  sedit "s:-L/usr/kde/3.5/lib -I/usr/qt/3/lib:-L/opt/lunar/kde/3/lib -I/opt/lunar/qt/3/lib:" configure.ac

  autoconf &&
  default_build

) > $C_FIFO 2>&1
