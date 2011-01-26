(

  # Fixes compilation error:
  # Failed to set capabilities on file `/sbin/setcap' (Operation not supported)
  patch_it $SOURCE2 1 &&

  if !( module_installed attr ); then
     sedit "s/LIBATTR := yes/LIBATTR := no/" Make.Rules
  fi &&

  default_build

) > $C_FIFO 2>&1
