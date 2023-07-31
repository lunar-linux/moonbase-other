# There's a circular depend on harfbuzz
if module_installed harfbuzz; then
  OPTS+=" -D harfbuzz=enabled"
else
  OPTS+=" -D harfbuzz=disabled"
fi

default_meson_build
