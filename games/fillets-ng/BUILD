#first patch for lua 5.2 (source fedora : https://lists.fedoraproject.org/pipermail/scm-commits/Week-of-Mon-20130513/1020417.html) fix compilation problems
patch_it ${SCRIPT_DIRECTORY}/fillets-ng.lua5.2.patch 1 &&

#second patch for lua 5.2 fix execution problems
patch_it ${SCRIPT_DIRECTORY}/fillets-ng.lua5.2-exec.patch 1 &&

#now fix the scripts that make application crash.
 #table.getn is deprecated since 5.1 and is removed from 5.2
 grep -rlZ "table.getn" ${BUILD_DIRECTORY}/${MODULE}-${DATA_VERSION}/ | xargs -0 sed -i 's/table.getn/#/g' &&

 #math.mod is replaced by math.fmod
 grep -rlZ "math.mod" ${BUILD_DIRECTORY}/${MODULE}-${DATA_VERSION}/ | xargs -0 sed -i 's/math.mod(/math.fmod(/g' &&


#now the compilation
  # Set default systemdir to correct directory
  OPTS+=" --datadir=/usr/share/games/fillets-ng"
 
  default_game_build  &&
  mkdir -p /usr/share/games/fillets-ng &&
  cp -R $BUILD_DIRECTORY/$MODULE-$DATA_VERSION/???* \
    /usr/share/games/fillets-ng
