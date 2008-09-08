(
  patch_it $SOURCE2 2 &&

  export BINDIR="/usr/bin"
  export MANDIR="/usr/share/man"
  export KERNELPATH="/usr/src/linux"
 
  default_make &&

  mkdir -p /usr/include/madwifi/include &&
  mkdir -p /usr/include/madwifi/net80211 &&
  cp -r include/* /usr/include/madwifi/include &&
  cp -r net80211/*.h /usr/include/madwifi/net80211

) > $C_FIFO 2>&1
