(

  sedit "s:2.3.5:2.4.2:" configure               &&
  add_priv_user zope:zope                        &&
  ./configure --prefix=${MODULE_PREFIX}/lib/zope  \
              --ignore-largefile                 &&
  default_make

) > $C_FIFO 2>&1
