(
  # i want recursive directory creation
	sedit "s/mkdir/g_mkdir_with_parents/g" src/threads.c

  default_build  &&

  install -D  $SCRIPT_DIRECTORY/asunder.desktop  /usr/share/applications

) > $C_FIFO 2>&1
