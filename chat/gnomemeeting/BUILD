(
  export PWLIBDIR=$SOURCE_DIRECTORY/pwlib             &&
  cd pwlib                                            &&
  make optnoshared                                    &&
  cd lib                                              &&
  ln -s libpt_linux_x86_r_s.a libpt.a                 &&
  cd ../..                                            &&
  
  export OPENH323DIR=$SOURCE_DIRECTORY/openh323       &&
  cd openh323                                         &&
  make optnoshared                                    &&
  cd lib                                              &&
  ln -s libh323_linux_x86_r_s.a libopenh323.a         &&
  cd ../..                                            &&
  
  sedit 's/LIBPT_FILE=\"libpt.so\"/LIBPT_FILE=\"\"/' configure                    &&
  sedit 's/LIBOPENH323_FILE=\"libopenh323.so\"/LIBOPENH323_FILE=\"\"/' configure  &&
  
  ./configure  --prefix=/opt/lunar/gnome/2                     \
               --datadir=/optlunar/gnome/2/share/gnomemeeting  \
               --sysconfdir=/etc/gnomemeeting                  \
               --with-openh323-includes=$OPENH323DIR/include   \
               --with-openh323-libs=$OPENH323DIR/lib           \
               --with-ptlib-includes=$PWLIBDIR/include/ptlib   \
               --with-ptlib-libs=$PWLIBDIR/lib                 &&
  make                                         &&
  make install

) > $C_FIFO 2>&1
