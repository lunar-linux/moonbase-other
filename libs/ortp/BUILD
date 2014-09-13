
  default_config &&

# Fixes a make failure related to its confusion about some paths.
  find . -name Makefile -print0 | xargs -0 sed -i -e 's:-Ino/:-I/:g'   \
                                                  -e 's:-Lno/:-L/:g'   \
                                                  -e 's:-Lyes/:-L/:g'  \
                                                  -e 's:-Iyes/:-I/:g'  &&

  default_make
