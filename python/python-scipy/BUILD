#python -m build --wheel --no-isolation --skip-dependency-check \
#    -C setup-args=-Dblas=blas \
#    -C setup-args=-Dlapack=lapack &&

#prepare_install &&
#python -m installer --destdir=/ dist/*.whl
OPTS+=" -Dblas=blas -Dlapack=lapack -Duse-system-libraries=boost.math,qhull"

default_meson_build
