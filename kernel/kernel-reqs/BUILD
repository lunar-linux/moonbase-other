(
  kreqs="cryptoapi cipe snare-core ftpfs cvsfs NVIDIA \
         submount alsa-driver bluez-kernel pcmcia-cs nforce \
	 hostap-driver ipw2100"

  for req in $kreqs; do
    if  module_installed  $req; then
      lin -c $req
    fi
  done
)
