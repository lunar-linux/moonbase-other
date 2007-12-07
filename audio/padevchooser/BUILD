(

  if in_depends pulseaudio avahi; then
    message "${MODULE_COLOR}pulseaudio${DEFAULT_COLOR} ${PROBLEM_COLOR}needs to be compiled with Avahi/ZeroConf support.${DEFAULT_COLOR}"
    exit 1
  fi

  default_build

) > $C_FIFO 2>&1
