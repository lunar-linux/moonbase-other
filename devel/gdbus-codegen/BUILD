default_meson_config &&
sed "s;@PV@;$VERSION;" < $SCRIPT_DIRECTORY/setup.py.in > build/gio/gdbus-2.0/codegen/setup.py &&
cd build/gio/gdbus-2.0/codegen &&
prepare_install &&
python setup.py install
