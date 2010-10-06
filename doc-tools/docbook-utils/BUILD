(

 # grep 2.7 no longer accepts [:space:] instead of [[:space:]]
 sedit 's/\[:space:\]/[&]/g' bin/jw.in &&

 # Do not loopback (breaks docbook-utils build)
 CENTRALIZED=/etc/sgml/catalog &&
 install-catalog -r $CENTRALIZED /etc/sgml/catalog &&

 default_build

) > $C_FIFO 2>&1


