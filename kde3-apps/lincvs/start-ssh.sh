# sample script for setting environment variables and
# starting the modified ssh client tool. Point 
# Options/Settings/External Programs/Remote Shell to
# this script after downloading openssh, replacing
# readpass.c in the toplevel dir of openssh and recompiling.
# SSH_ASKPASS needs to point to the ssh-askpass tool,
# and the line below should point to the newly compiled
# ssh.
#

export SSH_ASKPASS=/usr/libexec/ssh-askpass
ssh "$@"
