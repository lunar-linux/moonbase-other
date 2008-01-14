(

  patch_it $SOURCE2 1 &&

  OPTS+=" --enable-email \
            --enable-fancydm \
            --with-logdir=/var/log/dansguardian \
            --with-piddir=/var/run" &&

  if is_depends clamav; then
    DGUSER="clamav:clamav"
    OPTS+=" --with-proxyuser=clamav --with-proxygroup=clamav"
  else
    DGUSER="nobody:nogroup"
    OPTS+=" --with-proxyuser=nobody --with-proxygroup=nogroup"
  fi &&

  default_build &&

    # Be kind and enable clamav in config
  if is_depends clamav; then
    sedit "/^#contentscanner.*clamdscan\.conf.*/ s;^#;;" /etc/dansguardian/dansguardian.conf &&
    sedit "s;^#clamdudsfile.*;clamdudsfile = '/tmp/clamd';" /etc/dansguardian/contentscanners/clamdscan.conf
  fi &&

  if [ ! -d /var/log/dansguardian ]; then
    mkdir -p /var/log/dansguardian
  fi &&

  devoke_installwatch &&
  chown -R ${DGUSER} /var/log/dansguardian

) > $C_FIFO 2>&1
