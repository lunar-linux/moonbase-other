(

  OPTS="--disable-static" &&

  default_build &&

# A quick and ditry hack to fix a make failure with ebook-tools;
# /usr/include/zip.h:51:21: fatal error: zipconf.h: No such file or directory
# The ./configure scripts and cmake instists on installing zipconf.h in 
# /usr/lib.

  ln -sf /usr/lib/libzip/include/zipconf.h /usr/include/zipconf.h

) > $C_FIFO 2>&1
