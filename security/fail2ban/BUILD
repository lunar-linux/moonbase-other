python setup.py build_ext -i &&

prepare_install &&

python setup.py install --prefix /usr --optimize=1 &&

install -Dm644 files/fail2ban.service /usr/lib/systemd/system/fail2ban.service &&
install -Dm644 files/fail2ban-logrotate /etc/logrotate.d/fail2ban &&
install -Dm644 files/bash-completion /usr/share/bash-completion/completions/fail2ban &&

for man in man/*.1 man/*.5; do
  install -Dm644 $man /usr/share/man/man${man##*.}/${man#*/}
done
