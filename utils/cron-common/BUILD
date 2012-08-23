(
  
  invoke_installwatch &&
  mkdir -p /etc/cron.{daily,hourly,weekly,monthly,d} &&
  [ -e /etc/crontab ] || install -m 644 $SOURCE_CACHE/$SOURCE /etc/crontab &&
  touch /etc/cron.deny &&
  devoke_installwatch

) > $C_FIFO 2>&1
