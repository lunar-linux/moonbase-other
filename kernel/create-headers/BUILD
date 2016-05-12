KERNEL_DIR="$SOURCE_DIRECTORY" &&

# Ready the headers
cd ${KERNEL_DIR} &&

make mrproper &&
make headers_check &&

make INSTALL_HDR_PATH=${SOURCE_DIRECTORY}/kernel-headers-$VERSION headers_install &&

# Remove some of them since they are provided by glibc already
rm -rf $SOURCE_DIRECTORY/kernel-headers-$VERSION/include/scsi &&

# clean-up unnecessary files generated during install
find \( -name .install -o -name ..install.cmd \) -delete &&

prepare_install &&

tar cjvf kernel-headers-$VERSION.tar.bz2 kernel-headers-$VERSION &&
install -m644 $SOURCE_DIRECTORY/kernel-headers-$VERSION.tar.bz2 $SOURCE_CACHE/
