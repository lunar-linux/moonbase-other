(
  kreqs="cryptoapi cipe snare-core ftpfs cvsfs NVIDIA_kernel \
         NVIDIA alsa-driver bluez-kernel pcmcia-cs"

  for req in $kreqs; do
    if  module_installed  $req; then
      lin -c $req
    fi
  done
)
