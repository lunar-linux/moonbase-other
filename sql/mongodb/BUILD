add_priv_user mongodb:mongodb -d /var/lib/mongodb -s /usr/bin/false &&

_opts+=" --use-system-pcre2 
         --use-system-yaml
         --use-system-zlib
         --use-system-snappy
         --disable-warnings-as-errors
         --use-system-stemmer
         --use-system-zstd
         --use-system-mongo-c
         --use-system-tcmalloc
         --use-system-libunwind
         --ssl
         --runtime-hardening=off
         MONGO_VERSION=$VERSION"

python3 buildscripts/scons.py $_opts install-devcore &&

prepare_install &&
install -D build/install/bin/mongo /usr/bin/mongo &&
install -D build/install/bin/mongod /usr/bin/mongod &&
install -D build/install/bin/mongos /usr/bin/mongos &&

if [ ! -f /etc/mongodb.conf ]; then
  install -m 644 $SCRIPT_DIRECTORY/mongodb.conf /etc/mongodb.conf
fi &&

for i in /var/{lib,log}/mongodb; do
  install -d $i -o mongodb -g mongodb -m 770
done
