sed -i -e 's/^.*run_ldconfig/#\0/' wscript &&

./waf configure --prefix=/usr    \
                --no-bash-completion \
                --configdir=/etc \
                --dyn-manifest &&

./waf build -v ${MAKES:+-j${MAKES}} &&

prepare_install &&
./waf install 
