(

  sedit "s:2.4.7 :2.6.4 :" configure  &&
  add_priv_user zope:zope  &&
  ./configure --prefix=${MODULE_PREFIX}/lib/zope  &&
  default_make

) > $C_FIFO 2>&1
