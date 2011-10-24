(

  . /etc/profile.d/qt4.rc &&

# So it can find ffmpeg headers.
  sedit "s:avcodec.h:libavcodec/avcodec.h:g" setup.py picard/musicdns/avcodec.c &&
  sedit "s:avformat.h:libavformat/avformat.h:g" setup.py picard/musicdns/avcodec.c &&
  sedit "s:avio.h:libavformat/avio.h:g" setup.py picard/musicdns/avcodec.c &&

  python setup.py config &&

  prepare_install &&
  python setup.py install

) > $C_FIFO 2>&1
