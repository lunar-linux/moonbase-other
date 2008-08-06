(

  OPTS+=" --enable-pthreads \
          --enable-regexp \
          --enable-largefile \
          --enable-klog \
          --enable-inet \
          --enable-imfile \
          --enable-imtemplate \
          --enable-mail \
          --enable-fsstnd \
          --enable-rsyslogd \
          --disable-rfc3195"

  default_build &&

  [ -f /etc/rsyslog.conf ] || install -m 644 $SOURCE_CACHE/$SOURCE2 /etc/rsyslog.conf &&
  [ -f /etc/config.d/rsyslog ] || install -m 644 $SOURCE_CACHE/$SOURCE3 /etc/config.d/rsyslog

) > $C_FIFO 2>&1
