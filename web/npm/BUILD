./configure --globalconfig="/etc/npmrc" --globalignorefile="/etc/npmignore" &&

default_make &&

mkdir -p /usr/lib/node_modules

# Fix wrong symlinks
rm -f /usr/share/man/{man1,man3,man5,man7}/* &&
for _dir in man1 man3 man5 man7; do
  cd /usr/lib/node_modules/npm/man/$_dir &&
  for _file in *; do
    ln -s /usr/lib/node_modules/npm/man/$_dir/$_file /usr/share/man/$_dir/
  done
done &&

# Make symlink for node-gyp
ln -sf /usr/lib/node_modules/npm/node_modules/node-gyp/bin/node-gyp.js /usr/bin/node-gyp
