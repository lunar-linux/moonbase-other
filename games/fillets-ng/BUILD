(

  # Set default systemdir to correct directory
  OPTS+=" --datadir=/usr/share/games/fillets-ng"
 
  default_game_build  &&
  mkdir -p /usr/share/games/fillets-ng &&
  cp -R $BUILD_DIRECTORY/$MODULE-$DATA_VERSION/???* \
    /usr/share/games/fillets-ng

) > $C_FIFO 2>&1
