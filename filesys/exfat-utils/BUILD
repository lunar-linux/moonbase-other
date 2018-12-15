OPTS+=" --sbindir=/usr/bin"

default_build &&

# Install man pages
install -d /usr/share/man/man8/
install -m444 dump/dumpexfat.8 \
              fsck/exfatfsck.8 \
              mkfs/mkexfatfs.8 \
              label/exfatlabel.8 \
              fuse/mount.exfat-fuse.8 \
              /usr/share/man/man8/
