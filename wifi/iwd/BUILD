export READLINE_CFLAGS=$(pkgconf --cflags /lib/pkgconfig/readline.pc) &&
export READLINE_LIBS=$(pkgconf --libs /lib/pkgconfig/readline.pc) &&

OPTS+=" --enable-wired \
        --enable-hwsim \
        --disable-tools \
        --localstatedir=/var"

if ! module_installed systemd; then
   OPTS+=" --disable-systemd-service"
fi

default_build
