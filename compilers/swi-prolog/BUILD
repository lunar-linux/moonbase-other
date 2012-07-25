(

  # looks like they use a different uudecode... don't use ours
  sedit "s:^if uudecode.*$:if false; then:" packages/jpl/configure &&

  OPTS+=" --with-world" &&

  # no idea why they catch those flags here - this breaks
  # a lot.. let's just remove the catch statement
  sedit "/--without-/ { N;N;N;N;d }" configure &&

  message "${MESSAGE_COLOR}The following 'unrecognized...' warning is alright${DEFAULT_COLOR}"
  # The configure in src/ doesn't know any --without-XYZ flags,
  # but we need to pass them on to packages/configure
  default_build

) > $C_FIFO 2>&1
