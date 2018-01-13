sed -i "/ldconfig/d" wscript &&

python waf configure --prefix=/usr &&
python waf build ${MAKES:+-j${MAKES}} &&

prepare_install &&

python waf install 
