
  cd libpit &&
  default_build &&

  cd ../heimdall &&
  default_build  &&

  mkdir -p /usr/share/doc/heimdall-suite/Linux &&
  install ../Linux/README /usr/share/doc/heimdall-suite/Linux/README &&

  if module_installed qt4; then
    cd ../heimdall-frontend &&
    export OUTPUTDIR="/usr/bin" &&
    qmake heimdall-frontend.pro &&
    default_make
  fi &&

  if module_installed udev; then
    udevadm control --reload-rules
  fi
