(

  export CC="gcc"
  patch -p1 <$SCRIPT_DIRECTORY/jpeg-c++.patch                    && 
  patch -p1 <$SCRIPT_DIRECTORY/libjpeg-6b-arm.patch              &&
  cp /usr/share/libtool/config.{guess,sub} .                     &&

  ./configure  --build=$BUILD               \
               --prefix=/usr                \
               --bindir=/usr/bin            \
               --sbindir=/usr/sbin          \
               --datadir=/usr/share         \
               --localstatedir=/var         \
               --libdir=/usr/lib            \
               --includedir=/usr/include    \
               --infodir=/usr/share/info    \
               --mandir=/usr/share/man      \
               --enable-shared              \
               --enable-static              &&

  sedit "s/\$(prefix)\/man\/man\$(manext)/\/usr\/share\/man\/man\$(manext)/" Makefile &&
  make                                                                                &&
  LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PWD make test                                     &&
  prepare_install                                                                     &&
  make install

) > $C_FIFO 2>&1
