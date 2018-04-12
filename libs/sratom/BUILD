sed -i "/ldconfig/d" wscript &&

python2 waf configure --prefix=/usr &&
python2 waf build ${MAKES:+-j${MAKES}} &&

prepare_install &&

python2 waf install
