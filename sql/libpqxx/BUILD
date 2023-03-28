  sedit 's:/bin/true:/usr/bin/true:g' configure &&
  sedit 's|\[:space:\]|\[\[:space:\]\]|g' configure &&
export CXXFLAGS="${CXXFLAGS} -std=c++17"
  OPTS+=" --enable-shared" &&
  default_build
