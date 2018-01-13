sed -i "/ldconfig/d" wscript &&

python waf configure --prefix=/usr    \
                     --configdir=/etc \
                     --dyn-manifest \
                     --bindings &&

python waf build ${MAKES:+-j${MAKES}} &&

prepare_install &&

python waf install 
