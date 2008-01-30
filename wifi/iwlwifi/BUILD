(

  KVER=$(if [ -f /usr/src/linux/include/linux/utsrelease.h ] ; then
                 grep UTS_RELEASE /usr/src/linux/include/linux/utsrelease.h | cut -d'"' -f2
         else
                 grep UTS_RELEASE /usr/src/linux/include/linux/version.h | cut -d'"' -f2
         fi)

  patch_it $SOURCE2 1 &&

  if ! $(uname -r | grep -q "^2\.6") ; then
        message ""
        message "${PROBLEM_COLOR}This module must only be installed with 2.6.x based kernels!${DEFAULT_COLOR}";
        message ""
        exit 1;
  fi &&

  make KVER=$KVER compatible/kversion || true &&
  default_make &&

  gather_docs ISSUES

) > $C_FIFO 2>&1
