add_priv_user mongodb:mongodb -d /var/lib/mongodb &&

OPTS+=" --use-system-boost \
        --use-system-pcre \
        --use-system-yaml \
        --use-system-zlib \
        --use-system-snappy\
        --disable-warnings-as-errors"

if [[ "$(arch)" =~ ^i.86$ ]]; then
  # WiredTiger must be disabled manually when building for i686
  OPTS+=" --wiredtiger=off"
fi

scons -j${MAKES:=1} core tools $OPTS &&

# Due to a dependency bug in the SConstructs the installation may fail when the
# install directory is a parent of the build directory (eg installing in /usr and building in /usr/src).
# We temporarily install into $SOURCE_DIRECTORY/__mongodb and copy it to /usr as a workaround.
scons -j${MAKES:=1} install --prefix=$SOURCE_DIRECTORY/__mongodb --nostrip $OPTS &&

prepare_install &&

cp -rf --remove-destination $SOURCE_DIRECTORY/__mongodb/* /usr/ &&

if [ ! -f /etc/mongodb.conf ]; then
  install -m 644 $SCRIPT_DIRECTORY/mongodb.conf /etc/mongodb.conf
fi &&

for i in /var/{lib,log}/mongodb; do
  install -d $i -o mongodb -g mongodb -m 770
done
