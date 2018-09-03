OPTS+=" --standard-lib \
        --install-data=/usr/share"

default_python2_build &&

# fix for python 2.7
sed -i 's:^#!.*bin/env python:#!/usr/bin/env python2:' /usr/bin/scons*
