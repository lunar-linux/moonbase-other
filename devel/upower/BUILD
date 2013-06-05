
  OPTS+=" --disable-man-pages "   &&
  sedit 's/-Werror//g' configure  &&
  sedit "s:slashlibdir=/lib:slashlibdir=/usr/lib:" configure &&
  export slashlibdir=/usr &&

  default_build
