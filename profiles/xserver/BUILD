#COUNT=0                                    &&
# needs selected_depenmds function instead of is_depends oops
#for package in xfree86 xfree86-beta; do
#  if is_depends $package; then
#    echo "has $package"
#    let "COUNT+=1"
#  fi
#done                                       &&
#
#if [ "$COUNT" -gt "1" ]; then
#  error_message "More than one server package was selected please only selest one."
#  false
#elif [ "$COUNT" -eq "0" ]; then
#  error_message "No packages were selected for your xserver please select one."
#  false
#fi &&
echo > $C_FIFO
