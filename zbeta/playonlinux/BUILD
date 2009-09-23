(

  prepare_install  &&

  mkdir -p /usr/share/games/playonlinux /usr/games  &&
  cp -ra * /usr/share/games/playonlinux/  &&
  
  # Launcher script
  echo -e "#!/bin/bash\ncd /usr/share/games/playonlinux && exec ./playonlinux \"\$@\"" > launcher  &&
  install -m755 launcher /usr/games/playonlinux
    
) > $C_FIFO 2>&1
