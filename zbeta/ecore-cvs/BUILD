(
 
  ./autogen.sh --build=$BUILD                      \
               --prefix=$MODULE_PREFIX             \
               --sysconfdir=/etc                   \
               --localstatedir=/var                \
               --infodir=$MODULE_PREFIX/share/info \
               --mandir=$MOUDLE_PREFIX/share/man   \
               --enable-ecore-txt                  \
               --enable-ecore-x                    \
               --enable-ecore-job                  \
               --enable-ecore-fb                   \
               --enable-ecore-evas                 \
               --enable-ecore-evas-gl              \
               --enable-ecore-evas-fb              \
               --enable-ecore-con                  \
               --enable-ecore-ipc                  \
               --enable-ecore-config               \
               $OPTS                               &&

   default_make

) > $C_FIFO 2>&1
