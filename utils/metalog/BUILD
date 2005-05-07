default_build &&
(

  if  [  !  -f  /etc/metalog.conf  ];  then
    cp  metalog.conf  /etc
  fi &&

  # clean up in case the old init system is still present
  if [ -e "/etc/init.d/metalog.sh" ]; then
     rm -f /etc/init.d/metalog.sh
  fi &&
  if [ -e "/etc/rc?.d/???metalog.sh" ]; then
     rm -f /etc/rc?.d/???metalog.sh
  fi

)
