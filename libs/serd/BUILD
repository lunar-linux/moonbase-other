sed -i "/ldconfig/d" wscript &&

python ./waf configure --prefix=/usr \
                        --mandir=/usr/share/man

python ./waf build &&

prepare_install &&

python ./waf install
