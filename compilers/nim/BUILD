## bootstrap version the compiler
chmod 755 bootstrap.sh
./bootstrap.sh

sedit ":/opt/nimble:/var/lib/nimble:" install.sh &&

prepare_install &&

# use /var/lib directory instead of /opt
patch_it $SOURCE2 1 &&

./install.sh /usr/bin
