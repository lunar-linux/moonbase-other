(

  export PATH=$MODULE_PREFIX/bin:$PATH
  export CPPFLAGS="$CPPFLAGS -I$MODULE_PREFIX/include"
  export LDFLAGS="$LDFLAGS -L$MODULE_PREFIX/lib"
  export USER=nobody

  default_cvs_build &&

  # Install the enlightenment_remote bash completion script
  install -D -m0644 data/other/enlightenment_remote  \
                    /etc/profile.d/enlightenment_remote-completion.rc

) > $C_FIFO 2>&1
