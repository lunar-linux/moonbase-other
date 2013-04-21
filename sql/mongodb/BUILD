# that linking dependency is just too stupid. Simply remove the debug function call for now
sedit 's:(" << errnoWithDescription(err) << ")":":' src/mongo/util/stacktrace.cpp &&

# gcc 4.8 does find something to warn about ;)
sedit 's:"-Werror",:\0 "-Wno-unused-local-typedefs", "-Wno-unused-variable",:' SConstruct &&

# respect our PATH variable(for wrapper support) -- this does not seem to work
sedit "s/env = Environment(/\0 ENV={'PATH' : os.environ['PATH']}, /" SConstruct &&

add_priv_user mongodb:mongodb -d /var/lib/mongodb  &&

scons -j${MAKES:=1} all &&
prepare_install &&
scons -j${MAKES:=1} install --full --prefix=/usr &&

if [ ! -f /etc/mongodb.conf ]; then
  install -m 644 $SOURCE_CACHE/$SOURCE2 /etc/mongodb.conf
fi &&

if module_installed systemd; then
    # Manually create /run/mongodb now, systemd tmpfiles.d will handle this next boot
  if [ ! -d /run/mongodb ]; then
    install -d -o mongodb -g root -m 0755 /run/mongodb
  fi
fi &&

for i in /var/{lib,log}/mongodb; do
  install -d $i -o mongodb -g mongodb -m 770
done
