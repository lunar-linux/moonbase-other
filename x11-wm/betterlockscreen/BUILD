prepare_install &&

cp $MODULE /usr/bin/

if module_installed systemd; then
   cp ${MODULE}@.service /usr/lib/systemd/system/
fi &&

mkdir -p /usr/share/doc/$MODULE/examples &&
cp examples/${MODULE}rc /usr/share/doc/$MODULE/examples/
