PY_VER="`lvu version python|cut -d. -f1-2`"
default_python3_build &&

#Some applications are not smart enough to look here.
ln -sf /usr/lib/python${PY_VER}/site-packages/pybind11/share/cmake/pybind11/ /usr/lib/cmake/pybind11 &&
ln -sf /usr/lib/python${PY_VER}/site-packages/pybind11/include/pybind11 /usr/include/pybind11 &&
ln -sf /usr/lib/python${PY_VER}/site-packages/pybind11/share/pkgconfig/pybind11.pc /usr/lib/pkgconfig/pybind11.pc
