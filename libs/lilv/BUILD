sed -i "/ldconfig/d" wscript &&

python2 waf configure --prefix=/usr    \
                     --no-bash-completion \
                     --configdir=/etc \
                     --dyn-manifest \
                     --bindings &&

python2 waf build -v ${MAKES:+-j${MAKES}} &&

prepare_install &&

python2 waf install 
