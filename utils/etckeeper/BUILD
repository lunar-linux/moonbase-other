if [[ "${ETCSCM:-git}" != "git" ]]; then
  if [[ "$ETCSCM" == "hg" ]] && module_installed mercurial; then
    sedit 's;^VCS=.*;#&;g;/VCS="hg"/s;^#;;' etckeeper.conf
  elif [[ "$ETCSCM" == "bzr" ]] && module_installed bzr; then
    sedit 's;^VCS=.*;#&;g;/VCS="bzr"/s;^#;;' etckeeper.conf
  fi
fi &&

prepare_install &&

make install &&

install -Dm 0755 $SCRIPT_DIRECTORY/60-lunar-list-installed /etc/etckeeper/list-installed.d/60-lunar-list-installed
