(
  # export LDFLAGS="$LDFLAGS -lm"
  # sedit 's:archopt_val="pentiumpro":archopt_val="i686":g' configure &&
  # sedit 's:#  include <linux/config.h>::' src/audio_out/audio_oss_out.c &&
  # unset CFLAGS &&

  ./configure  --build=$BUILD              \
               --prefix=/usr               \
               --sysconfdir=/etc           \
               --localstatedir=/var        \
               --libdir=/usr/lib           \
               --infodir=/usr/share/info   \
               --mandir=/usr/share/man     \
               $OPTS                       &&
  default_make                          

) > $C_FIFO 2>&1
