(

  if ! $(uname -r | grep -q "^2\.6") ; then
	message ""
	message "${PROBLEM_COLOR}This module must only be installed with 2.6.x based kernels!${DEFAULT_COLOR}";
	message ""
	exit 1;
  fi &&

  default_make

) > $C_FIFO 2>&1
