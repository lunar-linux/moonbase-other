default_build &&

if module_installed systemd; then
   install -D -m0644 contrib/Fedora/haveged.service /usr/lib/systemd/system/haveged.service &&
   install -D -m0644 contrib/Fedora/haveged-once.service /usr/lib/systemd/system/haveged-once.service &&
   install -D -m0644 contrib/Fedora/haveged-dracut.module /usr/lib/systemd/system/haveged-dracut.module &&
   install -D -m0644 contrib/Fedora/90-haveged.rules /usr/lib/udev/rules.d/90-haveged.rules
fi
