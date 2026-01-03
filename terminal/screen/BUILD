# PTY mode set to 0620 explicitly, just to make sure;
# https://security.opensuse.org/2025/05/12/screen-security-issues.html#3c-screen-by-default-creates-world-writable-ptys-cve-2025-46803

OPTS+=" --enable-colors256 \
        --with-pty-mode=0620 \
        --with-pty-group=5 \
        --enable-rxvt_osc \
        --enable-utmp \
        --with-socket-dir=/run/screens \
        --with-sys-screenrc=/etc/screenrc"

default_build &&

if [ ! -e /etc/screenrc ]; then
  cp -p etc/etcscreenrc /etc/screenrc
fi
