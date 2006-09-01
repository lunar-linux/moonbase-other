(

# This is a temp fix to address an API change with libquicktime-0.9.9 
# and above. Re-evaluate on the next version bump of mjpegtools.

  sedit "s/fileno(((quicktime_t \*)lav_file->qt_fd)->stream);/lqt_fileno((quicktime_t \*)lav_file->qt_fd);/" lavtools/lav_io.c

  default_build

) > $C_FIFO 2>&1
