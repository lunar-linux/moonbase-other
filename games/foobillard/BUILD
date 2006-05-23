(
  sedit "s:exec_prefix}/bin:exec_prefix}/games:" configure  &&
  sedit "s:prefix}/share:prefix}/share/games:"   configure  &&

  if module_installed NVIDIA; then
	OPTS="$OPTS --enable-bumpref=yes"
  else
	OPTS="$OPTS --enable-bumpref=no"
  fi

  default_game_build

) > $C_FIFO 2>&1
