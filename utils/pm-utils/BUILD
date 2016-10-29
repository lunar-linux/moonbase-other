default_build &&

# nm >=0.8.2 has native udev suspend/resume support
rm -f /usr/lib/pm-utils/sleep.d/55NetworkManager &&

# Remove hooks that cause hardware failure or don't make sense at all
rm -f /usr/lib/pm-utils/power.d/{harddrive,disable_wol}
