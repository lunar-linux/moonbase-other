(

  if [ $WITH_RADIOTAP == "y" ]; then
    sedit "s:#CONFIG_IPW2200_RADIOTAP=y:CONFIG_IPW2200_RADIOTAP=y:" Makefile
  fi &&

  if [ $WITH_PROMISCUOUS == "y" ]; then
    sedit "s:#CONFIG_IPW2200_PROMISCUOUS=y:CONFIG_IPW2200_PROMISCUOUS=y:" Makefile
  fi &&

  # Debug sucks
  sedit "s:CONFIG_IPW_DEBUG=y:#CONFIG_IPW_DEBUG=y:" Makefile

  KVER=$(if [ -f /usr/src/linux/include/linux/utsrelease.h ] ; then
         	grep UTS_RELEASE /usr/src/linux/include/linux/utsrelease.h | cut -d'"' -f2
	 else
	 	grep UTS_RELEASE /usr/src/linux/include/linux/version.h | cut -d'"' -f2
	 fi)

  if ! $(uname -r | grep -q "^2\.6") ; then
	message ""
	message "${PROBLEM_COLOR}This module must only be installed with 2.6.x based kernels!${DEFAULT_COLOR}";
	message ""
	exit 1;
  fi &&

  make KVER=$KVER &&
  prepare_install &&
  make KVER=$KVER install

) > $C_FIFO 2>&1
