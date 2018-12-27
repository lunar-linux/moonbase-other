cd $SOURCE_DIRECTORY/js/src &&

if [[ $STATIC_LIBRARY == "n" ]]; then
  sedit 's/FORCE_STATIC_LIB = True/FORCE_STATIC_LIB = False/'
fi && 

./configure --prefix=/usr &&
make &&
prepare_install &&
make install
