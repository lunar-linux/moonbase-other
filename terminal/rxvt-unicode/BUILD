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
        --enable-lastlog \
        --enable-fading \
        --enable-utmp \
        --enable-wtmp \
        --enable-xim \
        --enable-lastlog"

default_build &&
chmod 644 README* Changes INSTALL &&

install -Dm644 $SCRIPT_DIRECTORY/urxvt.desktop /usr/share/applications/
