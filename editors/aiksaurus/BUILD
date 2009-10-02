(

# A gcc-4.4.1 hack, revisit on next version bump.
  sed -i "25i #include <cstdlib>" base/aiksaurus.t.cpp &&
  sed -i "24i #include <cstdlib>" gtk/src/gtkAiksaur.t.cpp &&
  sed -i "20i #include <string.h>" gtk/src/Display.cpp &&

  default_build

) > $C_FIFO 2>&1
