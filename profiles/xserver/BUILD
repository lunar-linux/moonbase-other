COUNT=0                                    &&

for package in xfree86 xfree86-beta; do
  if is_depends $package; then
    let "COUNT+=1"
  fi
done                                       &&

if [ "$COUNT" -gt "1" ]; then
  error_message "More than one server package was selected please only selest one."
  false
else if [ "$COUNT" -eq "0" ]; then
  error_message "No packages were selected for your xserver please select one."
  false
fi
&&
echo > $C_FIFO
