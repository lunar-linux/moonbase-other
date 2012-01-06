(

  ALLIANCE_TOP=${MODULE_PREFIX} &&

  OPTS+=" --prefix=${ALLIANCE_TOP}" &&

  default_build &&

  echo "export ALLIANCE_TOP=\"${MODULE_PREFIX}\"" > $SOURCE_DIRECTORY/$MODULE.rc &&
  echo export PATH=\"'${MODULE_PREFIX}'/bin:'${PATH}'\" >> $SOURCE_DIRECTORY/$MODULE.rc &&
  echo export LD_LIBRARY_PATH=\"'${MODULE_PREFIX}'/lib:'${LD_LIBRARY_PATH}'\" >> $SOURCE_DIRECTORY/$MODULE.rc &&
  export MANPATH=\"'${MODULE_PREFIX}'/man:'${MANPATH}'\" >> $SOURCE_DIRECTORY/$MODULE.rc &&

  install -m644 $SOURCE_DIRECTORY/$MODULE.rc /etc/profile.d/

) > $C_FIFO
