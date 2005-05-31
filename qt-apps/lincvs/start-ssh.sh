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

# The following commands allow the ssh that is called to use a running ssh-agent for keys
# improvents may be made to this to have a ssh-agent started if one is not running
export SSH_AGENT_PID=`ps --user $UID -o pid=,comm= | grep ssh-agent | grep -v grep | sed "s/^ //" | cut -d" " -f 1`
export SSH_AGENT_PPID=`ps --pid=$SSH_AGENT_PID  -o ppid="" | sed "s/ //"`
export SSH_AUTH_SOCK=`find /tmp/ssh-* -name "agent.$SSH_AGENT_PPID"`

ssh "$@"
