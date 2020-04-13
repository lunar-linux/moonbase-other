OPTS+=" -Dwin32-backend=false" \
OPTS+=" -Ddemos=false -Dbuild-examples=false -Dbuild-tests=false -Dinstall-tests=false"

if [[ "$FFMPEG" == "y" ]]; then
  if [[ "$GSTREAMER" == "y" ]]; then
    MEDIA_BACKENDS="gstreamer,ffmpeg"
  fi
  MEDIA_BACKENDS="ffmpeg"
else
  if [[ "$GSTREAMER" == "y" ]]; then
    MEDIA_BACKENDS="gstreamer"
  else
    MEDIA_BACKENDS="none"
  fi
fi

OPTS+=" -Dmedia=$MEDIA_BACKENDS"

default_meson_build
