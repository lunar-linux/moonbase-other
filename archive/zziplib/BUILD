OPTS+=" -DZZIPDOCS=OFF -DCMAKE_POLICY_VERSION_MINIMUM=3.5"

default_cmake_build &&

# This fix should be temporary until the pkgconfig file is properly generated
sedit 's/-lzzip/&-0/' /usr/lib/pkgconfig/zziplib.pc &&
sedit 's/-lzzipfseeko/&-0/' /usr/lib/pkgconfig/zzipfseeko.pc &&
sedit 's/-lzzipmmapped/&-0/' /usr/lib/pkgconfig/zzipmmapped.pc &&
sedit 's/-lzzipwrap/&-0/' /usr/lib/pkgconfig/zzipwrap.pc
