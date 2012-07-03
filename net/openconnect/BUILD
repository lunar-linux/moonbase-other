(

  if in_depends $MODULE openssl ; then
    sedit "s:I\${with_openssl}/:I/usr/:" configure &&
    sedit "s:\${with_openssl}/libssl.a:/usr/lib/libssl.so:" configure &&
    sedit "s:\${with_openssl}/libcrypto.a:/usr/lib/libcrypto.so:" configure
  fi &&

  default_build

) > $C_FIFO 2>&1
