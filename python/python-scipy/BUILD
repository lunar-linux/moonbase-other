export CFLAGS+=" $(pkgconf --cflags /usr/lib64/pkgconfig/openblas64.pc) \
                 $(pkgconf --libs /usr/lib64/pkgconfig/openblas64.pc)"
export CXXFLAGS+=" $(pkgconf --cflags /usr/lib64/pkgconfig/openblas64.pc) \
                   $(pkgconf --libs /usr/lib64/pkgconfig/openblas64.pc)"

python -m build --wheel --skip-dependency-check -C setup-args=-Dblas=blas -C setup-args=-Dlapack=lapack &&

prepare_install
python -m installer --destdir=/ dist/*.whl
