OPTS="--with-lib-preference='system' $OPTS" &&

OPTS+=" --with-libsndfile=system --with-expat=system --enable-unicode" &&

# use soxr for samplerate conversion
OPTS+=" --with-libresample=no --with-libsamplerate=no --with-libsoxr=system"  &&

# use bundled version because system lib misses audacity additions
OPTS+=" --with-portaudio=local --with-portmixer" &&

# ffmpeg is broken due to outdated API
OPTS+=" --without-ffmpeg" &&

default_build
