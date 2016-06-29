if ! ( module_installed nim ); then
   ## bootstrap version the compiler
   chmod 755 bootstrap.sh
   ./bootstrap.sh
fi &&

sedit ":/opt/nimble:/var/lib/nimble:" install.sh &&

prepare_install &&

./install.sh /usr/bin
