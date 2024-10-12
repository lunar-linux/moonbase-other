default_config &&

#to prevent overlinking
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make &&

# Remove the recursive symlink
rm -fr /usr/include/gphoto2/gphoto2
