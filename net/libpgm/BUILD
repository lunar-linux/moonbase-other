cd openpgm/pgm &&

2to3 -wn version_generator.py &&
# 5.3.128 is a little broken
cp openpgm-5.2.pc.in openpgm-5.3.pc.in &&

./bootstrap.sh &&

OPTS+=" --disable-static" &&

default_build
