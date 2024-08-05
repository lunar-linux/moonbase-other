if in_depends $MODULE libacl; then
    OPTS+=" --with-libacl"
else
    OPTS+=" --without-libacl"
fi &&

if in_depends $MODULE libcap; then
    OPTS+=" --with-libcap"
else
    OPTS+=" --without-libcap"
fi &&

if in_depends $MODULE liburing; then
    OPTS+=" --with-liburing"
else
    OPTS+=" --without-liburing"
fi &&

if in_depends $MODULE oniguruma; then
    OPTS+=" --with-oniguruma"
else
    OPTS+=" --without-oniguruma"
fi &&

./configure $OPTS &&

default_make
