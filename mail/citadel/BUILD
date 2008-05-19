(

# It should run as something other than root.
  add_priv_user citadel:citadel &&

  OPTS="$OPTS -prefix=${MODULE_PREFIX}"

  default_build

) > $C_FIFO 2>&1
