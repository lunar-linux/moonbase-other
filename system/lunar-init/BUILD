(

  prepare_install &&

  mkdir -p /run &&

  cd $SCRIPT_DIRECTORY/ &&

  for SCRIPT in network hostname netmount mount ; do
    if [ ! -f /etc/init.d/${SCRIPT} ] && [ "${SCRIPT}" != "mount" ] ; then

      install -m0740 ${SCRIPT_DIRECTORY}/${SCRIPT} /etc/init.d/${SCRIPT}
      rm -f /etc/rc?.d/???${SCRIPT}
      chkconfig --add ${SCRIPT} &> /dev/null

    elif [ ! -f /etc/init.d/${SCRIPT} ] && [ "${SCRIPT}" == "mount" ] ; then

      install -m0740 ${SCRIPT_DIRECTORY}/mount /etc/init.d/mount
      rm -f /etc/rc?.d/???mount
      mkdir -p /etc/rcS.d
      ln -sf /etc/init.d/mount /etc/rcS.d/S10mount
      ln -sf /etc/init.d/mount /etc/rc0.d/K99mount
      ln -sf /etc/init.d/mount /etc/rc6.d/K99mount

    else

      message "${PROBLEM_COLOR}Another copy of the script ${QUERY_COLOR}${SCRIPT}${PROBLEM_COLOR} in /etc/init.d/ detected!"
      message "${DEFAULT_COLOR}${CYAN}Please remove it and reinstall this module.${DEFAULT_COLOR}"

    fi
  done

) > $C_FIFO 2>&1
