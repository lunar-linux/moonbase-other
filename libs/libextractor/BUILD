sedit 's:strlen (\"SfxDocumentInfo\"))) ||:strlen (\"SfxDocumentInfo\") + 1)) ||:' src/plugins/ole2_extractor.c &&

sed -i \
          -e '/^ax_create_pkgconfig_ldflags=/s:$LDFLAGS ::' \
          -e 's:tidy/tidy.h:tidy.h:' \
          -e 's:tidy/tidybuffio.h:buffio.h:' \
          configure src/plugins/html_extractor.c &&

sed -e 's/ CODEC_FLAG_QSCALE/ AV_CODEC_FLAG_QSCALE/' \
    -e 's/FF_INPUT_BUFFER_PADDING_SIZE/AV_INPUT_BUFFER_PADDING_SIZE/' \
    -i src/plugins/thumbnailffmpeg_extractor.c &&


autoreconf -fi &&

if in_depends $MODULE qt5 ; then
  . /etc/profile.d/qt5.rc
fi &&

OPTS+=" --enable-shared --disable-static" &&

default_build
