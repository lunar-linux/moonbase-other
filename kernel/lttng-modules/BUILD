#!/bin/bash

default_config &&

make ${MAKES:+-j${MAKES}} &&

prepare_install &&

make modules_install &&

/sbin/depmod -a
