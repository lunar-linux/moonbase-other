PY_VER=$(lvu version python | cut -d. -f1-2) &&
prepare_install &&

install -Dm 644 -d /usr/lib/python${PY_VER}/site-packages/ &&
cp -Rp * /usr/lib/python${PY_VER}/site-packages/
