OPTS+=" -Dsanitize=true \
        -Dbuild_docs=true"

default_meson_build &&

mkdir -p /etc/xdg &&
install -D -m644 compton.sample.conf /etc/xdg/compton.conf.example
install -D -m644 $SCRIPT_DIRECTORY/compton.conf /etc/xdg/
