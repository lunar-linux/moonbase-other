(

  ./configure  --build=$BUILD                  \
               --sysconfdir=/etc               \
               --prefix=/usr                   \
               --localstatedir=/var            \
               --infodir=/usr/share/info       \
               --mandir=/usr/share/man         \
               $OPTS                          &&
   
#   ( for i in `find -name "Makefile"`; do
#           sedit 's/-Werror//g' $i
#    done) &&

  default_make

) > $C_FIFO 2>&1

