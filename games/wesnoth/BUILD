(
  OPTS+=" -DBINDIR=games \
          -DDATAROOTDIR=${MODULE_PREFIX}/share/games/ \
          -DDESKTOPDIR=${MODULE_PREFIX}/share/applications \
          -DICONDIR=${MODULE_PREFIX}/share/pixmaps \
          -DMANDIR=${MODULE_PREFIX}/share/man \
          -DDOCDIR=${MODULE_PREFIX}/doc"

  #fribidi is obsolete and would require 0.10.*
  OPTS+=" -DENABLE_FRIBIDI=OFF"

  if ! in_depends pango cairo; then
    message "${PROBLEM_COLOR}Wesnoth requires pango to be build with cairo backend."
    message "${PROBLEM_COLOR}Please rebuild pango and select cairo backend."
    exit 1
  fi

  default_cmake_build
) > $C_FIFO 2>&1
