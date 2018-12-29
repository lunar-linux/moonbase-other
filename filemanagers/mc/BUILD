OPTS+=" --enable-mclib \
        --enable-charset \
        --enable-vfs-tar \
        --enable-vfs-ftp \
        --enable-vfs-sftp \
        --enable-largefile \
        --enable-threads=posix \
        --disable-tests \
        --with-pic \
        --with-mmap \
        --with-subshell"

default_build &&

# Replace mc.keymap symlink with target file to fix backup mechanism
rm /etc/mc/mc.keymap && cp /etc/mc/mc{.default,}.keymap
