(

  # this seems to be a bad bug in boost
  # see https://svn.boost.org/trac/boost/ticket/6131
  # the following is based on an 12000 lines ArchLinux patch
  for file in $(grep -l foreach -r . | grep "cpp\$\|hpp$"); do
    sedit "/#include/ ! s:foreach:BOOST_FOREACH:g" $file &&
    sedit "s:#include \".*foreach.hpp\":#include <boost/foreach.hpp>:" $file
  done &&

  OPTS+=" -DBINDIR=games \
          -DDATAROOTDIR=${MODULE_PREFIX}/share/games/ \
          -DDESKTOPDIR=${MODULE_PREFIX}/share/applications \
          -DICONDIR=${MODULE_PREFIX}/share/pixmaps \
          -DMANDIR=${MODULE_PREFIX}/share/man \
          -DDOCDIR=${MODULE_PREFIX}/doc/$MODULE"

  # fribidi is obsolete and would require 0.10.*
  OPTS+=" -DENABLE_FRIBIDI=OFF"

  if ! in_depends pango cairo; then
    message "${PROBLEM_COLOR}Wesnoth requires pango to be build with cairo backend."
    message "${PROBLEM_COLOR}Please rebuild pango and select cairo backend."
    exit 1
  fi

  default_cmake_build
) > $C_FIFO 2>&1
