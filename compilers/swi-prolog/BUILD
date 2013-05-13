
  # looks like they use a different uudecode... don't use ours
  sedit "s:^if uudecode.*$:if false; then:" packages/jpl/configure &&

  OPTS+=" --with-world --enable-shared" &&

  if module_installed %JAVA_SDK ; then
    export JAVAC=$JAVA_HOME
  fi &&

  # no idea why they catch those flags here - this breaks
  # a lot.. let's just remove the catch statement
  sedit "/--without-/ { N;N;N;N;d }" configure &&

  message "${MESSAGE_COLOR}The following 'unrecognized...' warning is alright${DEFAULT_COLOR}"
  # The configure in src/ doesn't know any --without-XYZ flags,
  # but we need to pass them on to packages/configure
  default_build 

#  if module_installed %JAVA_SDK ; then
#    if [ `arch` == "x86_64" ] ; then
#      export LD_LIBRARY_PATH="$JAVA_HOME/jre/lib/amd64:$LD_LIBRARY_PATH" && 
#      ldconfig
#     else
#      export LD_LIBRARY_PATH="$JAVA_HOME/jre/lib/i386:$LD_LIBRARY_PATH" && 
#      ldconfig
#    fi
#  fi
