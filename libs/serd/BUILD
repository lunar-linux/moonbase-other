sed -i "/ldconfig/d" wscript &&

python2 ./waf configure --prefix=/usr \
                        --mandir=/usr/share/man

python2 ./waf build &&

prepare_install &&

python2 ./waf install
