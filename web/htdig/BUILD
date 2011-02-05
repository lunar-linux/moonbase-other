(

  OPTS+=" --enable-bigfile --with-config-dir=/etc/htdig \
          --with-default-config-file=/etc/htdig/htdig.conf \
          --with-cgi-bin-dir=/var/htdig --with-search-dir=/usr/share/htdig \
          --with-image-dir=/usr/share/htdig" &&

  sedit "s|Collection::||g" htsearch/Collection.h &&

  default_build

) > $C_FIFO 2>&1
