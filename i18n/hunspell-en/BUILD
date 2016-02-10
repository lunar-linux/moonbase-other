prepare_install &&

install -dm755 /usr/share/hunspell
install -m644 en_*.dic en_*.aff /usr/share/hunspell &&

pushd /usr/share/hunspell/
  en_GB_aliases="en_AG en_AU en_BS en_BW en_BZ en_DK en_GB en_GH en_HK en_IE en_IN en_JM en_NA en_NG en_NZ en_SG en_TT en_ZA en_ZW"
  for lang in $en_GB_aliases; do
    ln -s en_GB-large.aff $lang.aff
    ln -s en_GB-large.dic $lang.dic
  done
  en_US_aliases="en_PH"
  for lang in $en_US_aliases; do
    ln -s en_US.aff $lang.aff
    ln -s en_US.dic $lang.dic
  done
popd &&

# the symlinks
#install -dm755 /usr/share/myspell/dicts
#pushd /usr/share/myspell/dicts
#  for file in /usr/share/hunspell/*; do
#    ln -sv /usr/share/hunspell/$(basename $file) .
#  done
#popd

# docs
install -dm755 /usr/share/doc/$MODULE &&
install -m644 README_en_*.txt /usr/share/doc/$MODULE
