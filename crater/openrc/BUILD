OPTS=(BRANDING='Lunar Linux')
OPTS+=(MKNET=no)
OPTS+=(MKPAM=pam)
OPTS+=(MKSELINUX=no)
OPTS+=(MKSYSVINIT=yes)
OPTS+=(MKBASHCOMP=yes)
OPTS+={MKPKGCONFIG=yes}
OPTS+=(MKTERMCAP=ncurses)
OPTS+=(MKZSHCOMP=no)
OPTS+=(LIBMODE=0644)
OPTS+=(PKG_PREFIX="")
OPTS+=(PREFIX=/usr)
OPTS+=(BINDIR=/usr/bin)
OPTS+=(SBINDIR=/usr/bin)
OPTS+=(LIBDIR=/usr/lib)
OPTS+=(SHLIBDIR=/usr/lib)
OPTS+=(LIBEXECDIR=/usr/libexec)
OPTS+=(SYSCONFDIR=/etc)

make "${OPTS[@]}" &&
prepare_install &&
make "${OPTS[@]}" install

install -m 644 support/sysvinit/inittab /etc/inittab &&
install -dm 755 /etc/{{conf,init}.d,runlevels/sysinit} &&
install -d /usr/lib/openrc/cache &&

sed -e 's/#unicode="NO"/unicode="YES"/' \
    -e 's/#rc_logger="NO"/rc_logger="YES"/' \
    -i /etc/rc.conf &&

# getty
sed -e 's|#baud=""|baud="38400"|' \
    -e 's|#term_type="linux"|term_type="linux"|' \
    -e 's|#agetty_options=""|agetty_options=""|' \
    -i /etc/conf.d/agetty &&

for num in 1 2 3 4 5 6; do
   cp -v /etc/conf.d/agetty /etc/conf.d/agetty.tty$num &&
   ln -sf /etc/init.d/agetty /etc/init.d/agetty.tty$num &&
   ln -sf /etc/init.d/agetty.tty$num /etc/runlevels/default/agetty.tty$num
done
