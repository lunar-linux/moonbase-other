# We need to remove the old catalog entries
if module_is_expired $MODULE ; then
  set_module_config OLD_VER "`installed_version $MODULE`"
fi &&

prepare_install &&
mkdir -p /usr/share/sgml/dsssl &&
cp $SCRIPT_DIRECTORY/Makefile $SOURCE_DIRECTORY &&
default_make
