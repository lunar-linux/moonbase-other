(

  if !( module_installed attr ); then
     sedit "s/LIBATTR := yes/LIBATTR := no/" Make.Rules
  fi &&

  default_build

) > $C_FIFO 2>&1
