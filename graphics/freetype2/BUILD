# There's a circular depend on harfbuzz
if module_installed harfbuzz; then
  OPTS+=" -Dharfbuzz=enabled"
else
  OPTS+=" -Dharfbuzz=disabled"
fi

default_meson_build
