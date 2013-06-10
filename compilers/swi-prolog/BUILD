  if [[ `arch` == "x86_64" ]] ; then
    JAVA_ARCH=amd64
   else
    JAVA_ARCH=i586
  fi &&

  export LD_LIBRARY_PATH="/usr/lib/swipl-`lvu version swi-prolog`" &&
  LDFLAGS+=" -Wl,-rpath,$JAVA_HOME/jre/lib/$JAVA_ARCH,-rpath,$JAVA_HOME/jre/lib/$JAVA_ARCH/server" &&

  # looks like they use a different uudecode... don't use ours
  sedit "s:^if uudecode.*$:if false; then:" packages/jpl/configure &&

  OPTS+=" --with-world --enable-shared" &&

  # no idea why they catch those flags here - this breaks
  # a lot.. let's just remove the catch statement
  sedit "/--without-/ { N;N;N;N;d }" configure &&

  message "${MESSAGE_COLOR}The following 'unrecognized...' warning is alright${DEFAULT_COLOR}"
  # The configure in src/ doesn't know any --without-XYZ flags,
  # but we need to pass them on to packages/configure
  default_build 
