default_python3_build &&

install -d /usr/share/ansible/doc &&
cp -dpr --no-preserve=ownership ./examples /usr/share/ansible/doc/ &&

install -d /usr/share/ansible/doc &&
cp -dpr --no-preserve=ownership ./examples /usr/share/ansible/doc/ &&

if [ ! -f /etc/ansible/ansible.cfg ]; then
    install -Dm644 examples/ansible.cfg /etc/ansible/ansible.cfg
fi &&

install -d /usr/share/man/man1 &&
cp -dpr --no-preserve=ownership docs/man/man1/*.1 /usr/share/man/man1/
