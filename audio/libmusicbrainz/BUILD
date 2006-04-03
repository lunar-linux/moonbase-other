(
  
  default_build	&&
  
  if module_installed Python ; then
	cd python;
	python setup.py build;
        python setup.py install;
  fi

) > $C_FIFO 2>&1
