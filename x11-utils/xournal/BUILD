(

  #`make desktop-install` shouldn't update caches...
  sedit "s/if test -z \"\$(DESTDIR)\"; then/if false; then/" Makefile.am &&

  #adding -lz -lm to LDFLAGS can break the build
  sedit 's/LDFLAGS=.*$/LIBS=\"-lz -lm\"/' configure.in &&

  autoreconf . &&

  default_build   &&

  make desktop-install

) > $C_FIFO 2>&1
