./build_linux.sh &&

prepare_install &&

cd $SOURCE_DIRECTORY/bin &&
for bin in *; do
   install -Dm755 $bin /usr/lib/cni/$bin
done
