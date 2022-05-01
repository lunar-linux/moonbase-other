sedit 's:dvdisaster48:dvdisaster:' contrib/$MODULE.desktop &&
sedit 's:Exec=:Exec=/usr/bin/:' contrib/$MODULE.desktop &&
sedit 's:Icon=:Icon=/usr/share/icons/hicolor/32x32/apps/:' contrib/$MODULE.desktop &&

if ! grep -q sse2 /proc/cpuinfo ; then
    OPTS+=" --with-sse2=no"
else
    OPTS+=" --with-sse2=yes"
fi &&

export CFLAGS="$CFLAGS -fcommon" &&

# Yeah, these need specifying else installed in wrong locations.
OPTS+=" --with-nls=yes  \
        --mandir=/usr/share/man \
        --docdir=/usr/share/doc \
        --localedir=/usr/share/locale \
        --prefix=/usr"

default_build &&

install -D -m 644 contrib/$MODULE.desktop /usr/share/applications/$MODULE.desktop &&
rm /usr/bin/$MODULE-uninstall.sh &&

for i in 16 24 32 48 64 ; do
    install -D -m 644 contrib/$MODULE${i}.png "/usr/share/icons/hicolor/${i}x${i}/apps/$MODULE.png"
done
