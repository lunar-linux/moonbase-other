OPTS+=" --enable-mclib \
        --enable-charset \
        --enable-vfs-tar \
        --enable-vfs-ftp \
        --enable-vfs-sftp \
        --enable-largefile \
        --disable-static \
        --disable-tests \
        --with-pic \
        --with-subshell"

default_build &&

# Replace mc.keymap symlink with target file to fix backup mechanism
rm /etc/mc/mc.keymap && cp /etc/mc/mc{.default,}.keymap
