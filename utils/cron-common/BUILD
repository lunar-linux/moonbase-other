(
  
  invoke_installwatch &&
  mkdir -p /etc/cron.{daily,hourly,weekly,monthly,d} &&
  install -m 755 $SOURCE_CACHE/$SOURCE /usr/bin/run-parts &&
  [ -e /etc/crontab ] || install -m 644 $SOURCE_CACHE/$SOURCE2 /etc/crontab &&
  touch /etc/cron.deny &&
  devoke_installwatch

) > $C_FIFO 2>&1
