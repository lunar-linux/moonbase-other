(

  OPTS+=" --with-threads --with-raptor=system --with-rasqal=internal"

  if in_depends $MODULE libxml2 ; then
    OPTS+=" --with-xml-parser=libxml"
  else
    OPTS+=" --with-xml-parser=expat"
  fi

  default_build

) > $C_FIFO 2>&1
