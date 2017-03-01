OPTS+=" --disable-static --disable-artstest --enable-alsa"
CFLAGS+=" -lm"

default_config &&

# Disable docs from building
echo -e "all:\ninstall:\n" > docs/Makefile &&

default_make &&

gather_docs TIPS
