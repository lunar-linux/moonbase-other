(
  if ! $(grep -q "objc" $DEPENDS_CONFIG/gcc) ; then
    message "${PROBLEM_COLOR}You need objc support, do a 'lin -r gcc' and enable objc support${DEFAULT_COLOR}"
    false
  fi
    
) &&
(

  ./configure  --prefix=/usr            \
               --localstatedir=/var     \
               --sysconfdir=/etc        &&
  make                                  &&
  prepare_install                       &&
  make    install

) > $C_FIFO 2>&1
