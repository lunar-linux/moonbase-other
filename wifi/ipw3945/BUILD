(

  if [ $WITH_RADIOTAP == "y" ]; then
    sedit "s:# CONFIG_IPW3945_RADIOTAP=y:CONFIG_IPW3945_RADIOTAP=y:" Makefile
    sedit "s:# CONFIG_IPW3945_MONITOR=y:CONFIG_IPW3945_MONITOR=y:" Makefile
  fi &&

  if [ $WITH_PROMISCUOUS == "y" ]; then
    sedit "s:# CONFIG_IPW3945_PROMISCUOUS=y:CONFIG_IPW3945_PROMISCUOUS=y:" Makefile
    sedit "s:# CONFIG_IPW3945_MONITOR=y:CONFIG_IPW3945_MONITOR=y:" Makefile
  fi &&

  # Debug sucks
  sedit "s:CONFIG_IPW3945_DEBUG=y:#CONFIG_IPW3945_DEBUG=y:" Makefile &&

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
  make KVER=$KVER install &&
# if [ ! -e /etc/modules.d/ipw3945 ]; then
#   echo "install ipw3945 /sbin/modprobe --ignore-install ipw3945 ; sleep 0.5 ; /sbin/ipw3945d --quiet" > /etc/modules.d/ipw3945
#   echo "remove ipw3945  /sbin/ipw3945d --kill ; /sbin/modprobe -r --ignore-remove ipw3945" >> /etc/modules.d/ipw3945
# fi
  gather_docs ISSUES 

) > $C_FIFO 2>&1
