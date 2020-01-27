unset LDFLAGS &&
default_python3_build &&

# add a symlink for numpy
# debian introduced this and many packages
# are just too lazy to explicitly ask for numpy
# In theory this should not exist and might break python2-numpy support
ln -sf /usr/lib/python`lvu version python|cut -c 1-3`/site-packages/numpy/core/include/numpy  /usr/include/numpy
