# Some sane opts defaults
OPTS+=" --enable-mousewheel \
        --enable-slipwheeling \
        --enable-keepscrolling \
        --enable-selectionscrolling \
        --enable-smart-resize \
        --enable-font-styles \
        --enable-rxvt-scroll \
        --enable-combining \
        --enable-unicode3 \
        --enable-fading \
        --enable-xim"

default_build &&
chmod 644 README* Changes INSTALL &&

if [ ! -d /usr/share/applications ]; then
	mkdir -p /usr/share/applications
fi &&
install -Dm644 $SCRIPT_DIRECTORY/urxvt.desktop /usr/share/applications/
