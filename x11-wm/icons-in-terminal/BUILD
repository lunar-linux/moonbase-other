TTF_DIR="/usr/share/fonts/TTF"

prepare_install &&

mkdir -p $TTF_DIR &&

install -dm755 "/usr/share/$MODULE" &&

if [ -d "/etc/$MODULE"  ]; then
    echo "  Backing up old config folder to location: /usr/share/$MODULE/backup"
    echo "  If you haven't made any changes in the old folder you can safely remove this."
    cp -RT "/etc/$MODULE" "/usr/share/$MODULE/backup"
fi &&

if [ ! -f "/etc/fonts/conf.avail/30-$MODULE.conf" ]; then
    install -dm755 /etc/fonts/conf.d &&
    install -Dm644 "30-$MODULE.conf" "/etc/fonts/conf.avail/30-$MODULE.conf" &&
    ln -sf "/etc/fonts/conf.avail/30-$MODULE.conf" /etc/fonts/conf.d/
fi &&

install -Dm644 README.md "/usr/share/$MODULE/" &&
install -Dm755 print_icons.sh "/usr/bin/$MODULE" &&
install -Dm644 "build/$MODULE.ttf" "$TTF_DIR/"
