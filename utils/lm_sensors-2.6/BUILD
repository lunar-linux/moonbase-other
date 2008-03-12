(
  message " ${PROBLEM_COLOR}Warning! ${DEFAULT_COLOR}This module compiles and must be installed only on 2.6.x kernels."
  sleep 5

  make user                   &&
  prepare_install             &&
  make  PREFIX=/usr            \
        MANDIR=/usr/share/man  \
        KERNELINCLUDEFILES=""  \
        user_install

) > $C_FIFO 2>&1
