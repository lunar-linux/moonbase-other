(

  # From http://www.gentoo-portage.com/dev-tex/luatex
  export LC_ALL=C  &&

  prepare_install  &&
  ./build.sh  &&

  # Install executable
  install -m755 build/texk/web2c/luatex /usr/bin/  &&
  pushd .  &&
  cd /usr/bin/  &&
  ln -sfn luatex lualatex  &&
  popd

) > $C_FIFO 2>&1
