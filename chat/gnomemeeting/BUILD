(
  export PWLIBDIR=$SOURCE_DIRECTORY/pwlib             &&
  cd pwlib                                            &&

 (
 #this fixes the build for bison 1.875
  cd tools/asnparser                                  &&
  make asn_grammar.cxx                                &&
  sedit "s:\(__attribute__ ((__unused__))\):\1;:"  asn_grammar.cxx
 )

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
  sedit 's/\(H323_CFLAGS=\"-DSPEEX_CODEC\)/\1 -DSTATIC_LIBS_USED/' configure &&

  ./configure  --prefix=/opt/lunar/gnome/2                     \
               --datadir=/opt/lunar/gnome/2/share/gnomemeeting  \
               --sysconfdir=/etc/gnomemeeting                  \
               --with-openh323-includes=$OPENH323DIR/include   \
               --with-openh323-libs=$OPENH323DIR/lib           \
               --with-ptlib-includes=$PWLIBDIR/include/ptlib   \
               --with-ptlib-libs=$PWLIBDIR/lib                 &&
  default_make 

) > $C_FIFO 2>&1
