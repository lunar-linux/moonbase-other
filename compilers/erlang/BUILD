./otp_build setup &&

# enable SMP
OPTS+=" --enable-smp-support"

default_build &&

mkdir -p /etc/config.d &&
install -Dm644 $SCRIPT_DIRECTORY/epmd.conf /etc/config.d/epmd
