mkdir -p /usr/lib/node_modules &&
chown -R root /usr/lib/node_modules &&

default_make &&

# Fix wrong symlinks
for _dir in man1 man3 man5 man7; do
  rm -f /usr/share/man/$_dir/* &&
  cd /usr/lib/node_modules/npm/man/$_dir &&
  for _file in *; do
    ln -s /usr/lib/node_modules/npm/man/$_dir/$_file /usr/share/man/$_dir/
  done
done &&

# Make symlink for node-gyp
ln -sf /usr/lib/node_modules/npm/node_modules/node-gyp/bin/node-gyp.js /usr/bin/node-gyp
