(
  kreqs="cryptoapi cipe snare-core ftpfs cvsfs NVIDIA_kernel \
         NVIDIA alsa-driver bluez-kernel"

  if  module_installed  pcmcia-cs;  then  
    lin -r -c pcmcia-cs
  fi
  for req in $kreqs; do
    if  module_installed  $req; then
      lin -c $req
    fi
  done
)
