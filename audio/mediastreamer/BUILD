
  sed -i -e "s:-O2::;s: -g::" configure.ac &&

  ./autogen.sh &&

  OPTS+=" --disable-gsm --enable-video --disable-static --disable-tests" &&

  default_config &&

# Fixes a make failure related to its confusion about some paths.
  find . -name Makefile -print0 | xargs -0 sed -i -e 's:-Iyes/:-I/:g'  \
                                                  -e 's:-Lyes/:-L/:g'  \
                                                  -e 's:-Lno/:-L/:g'   \
                                                  -e 's:-Ino/:-I/:g'   &&

  default_make
