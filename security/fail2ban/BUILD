./fail2ban-2to3 &&

default_python3_build &&

for man in man/*.1 man/*.5; do
  install -Dm644 $man /usr/share/man/man${man##*.}/${man#*/}
done &&

install -Dm644 build/fail2ban.service /usr/lib/systemd/system/fail2ban.service
install -Dm644 files/fail2ban-tmpfiles.conf /usr/lib/tmpfiles.d/fail2ban.conf
install -Dm644 files/fail2ban-logrotate /etc/logrotate.d/fail2ban
install -Dm644 files/bash-completion /usr/share/bash-completion/completions/fail2ban

# fix sendmail location
sedit 's/sbin/bin/g' /etc/fail2ban/action.d/sendmail*.conf
