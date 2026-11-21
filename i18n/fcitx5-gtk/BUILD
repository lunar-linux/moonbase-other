OPTS+=" -DENABLE_GIR=OFF \
        -DENABLE_GTK2_IM_MODULE=OFF \
        -DENABLE_GTK3_IM_MODULE=ON \
        -DENABLE_GTK4_IM_MODULE=OFF \
        -DENABLE_SNOOPER=OFF"

default_cmake_build &&

# Refresh the GTK immodules cache so the module is picked up right away.
if [ -x /usr/bin/gtk-query-immodules-3.0 ]; then
  /usr/bin/gtk-query-immodules-3.0 --update-cache
fi
