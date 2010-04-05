(
  sedit "s;-m 4755 -o daemon;-m 4711 -o root;" src/Makefile.in &&
  sedit "/^#define LOG_FILE/s;.*;/*&*/;" src/include/options.h &&
  sedit "/#define SYSLOG/s;.*;#define SYSLOG;" src/include/options.h &&
  sedit "/^SYSLOG/s;.*;SYSLOG = 1;" src/cron.conf &&
  sedit "/^LOG_FILE/s;.*;LOG_FILE = NONE;" src/cron.conf &&
  sedit "/^DENY_FILE/s;.*;DENY_FILE = /etc/cron.deny;" src/cron.conf &&

  default_build

) > $C_FIFO 2>&1
