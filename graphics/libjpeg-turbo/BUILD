
  OPTS+=" --disable-static" &&
 
# Not PSAFE when you say yes to Java
  if in_depends $MODULE sun-jdk; then
    export MAKES=1
  fi &&

  default_build
