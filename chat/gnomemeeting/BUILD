(
  export PWLIBDIR=$SOURCE_DIRECTORY/pwlib-1.5.0             &&
  export OPENH323DIR=$SOURCE_DIRECTORY/openh323-1.12.0      &&

  #Build pwlib 
  cd $PWLIBDIR                                              &&
  ./configure --disable-shared                              &&
  make -j 1 optnoshared                                     &&
  cd lib                                                    &&
  ln -s libpt_linux_x86_r_s.a libpt.a                       &&
  cd ../..                                                  &&

  #Build openh323
  cd $OPENH323DIR                                           &&
  ./configure --disable-shared                              &&
  make -j 1 optnoshared                                     &&
  cd lib                                                    &&
  ln -s libh323_linux_x86_r_s.a libopenh323.a               &&

  #Build gnomemeeting 
  cd $SOURCE_DIRECTORY  
  sedit 's/LIBPT_FILE=\"libpt.so\"/LIBPT_FILE=\"\"/' configure                        &&
  sedit 's/LIBOPENH323_FILE=\"libopenh323.so\"/LIBOPENH323_FILE=\"\"/' configure      &&
  sedit 's/ARCH_H323_CFLAGS=\"\"/ARCH_H323_CFLAGS=\"-DSTATIC_LIBS_USED\"/'  configure &&

  ./configure  --prefix=/opt/lunar/gnome/2.4                     \
               --datadir=/opt/lunar/gnome/2.4/share/gnomemeeting  \
               --sysconfdir=/etc/gnomemeeting                  \
               --with-openh323-includes=$OPENH323DIR/include   \
               --with-openh323-libs=$OPENH323DIR/lib           \
               --with-ptlib-includes=$PWLIBDIR/include/ptlib   \
               --with-ptlib-libs=$PWLIBDIR/lib                 &&
  default_make 

) > $C_FIFO 2>&1
