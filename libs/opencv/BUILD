(

  sedit "s:ffmpeg/avcodec.h:libavcodec/avcodec.h:g" configure otherlibs/highgui/cvcap_ffmpeg.cpp
  sedit "s:ffmpeg/avformat.h:libavformat/avformat.h:g" otherlibs/highgui/cvcap_ffmpeg.cpp
  sedit "s:ffmpeg/swscale.h:libswscale/swscale.h:g" otherlibs/highgui/cvcap_ffmpeg.cpp configure
  sedit "s:libdc1394/dc1394_control.h:dc1394/control.h:g" configure otherlibs/highgui/cvcap_dc1394.cpp
  sedit "s:-ldc1394_control:-lcontrol:g" configure
  sedit "s:dc1394_control:control:g" configure
#  sedit "s:<ImfCRgbaFile.h:<OpenEXR/ImfCRgbaFile.h:g" configure

  patch_it  $SOURCE_CACHE/$SOURCE2 0 &&

  default_build

) > $C_FIFO 2>&1
