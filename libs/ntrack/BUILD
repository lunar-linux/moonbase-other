(

  patch_it $SOURCE2 0 &&
  find . -name 'Makefile.*' -exec sed -i 's/-Werror//g' {} \; &&
  find . -name 'Makefile.*' -exec sed -i 's/-pedantic//g' {} \; &&
  sedit 's/nl-route/nl-route-3/g' configure &&
  # If more than one libnl is installed compilation will break because
  # ntrack will try to use them all. So we choose the newest one
  # and hide the older so configure can skip them.
  if module_installed libnl3; then
  sedit 's/libnl-2.0/lib-bad-nl-2.0/g' configure
  sedit 's/libnl-1/lib-bad-nl-1/g' configure
  elif module_installed libnl2; then
  sedit 's/libnl-1/lib-bad-nl-1/g' configure
  fi &&
  OPTS+=" --disable-static " &&
  default_build

) > $C_FIFO 2>&1
