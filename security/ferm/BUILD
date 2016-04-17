prepare_install &&

make install &&

# remove fancy docs
rm /usr/share/doc/ferm/ferm.{html,txt} &&

# setup default config
if [ ! -f "/etc/ferm.conf" ]; then
  install -Dm 644 examples/workstation.ferm /etc/ferm.conf
fi
