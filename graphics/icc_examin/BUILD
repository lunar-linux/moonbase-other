(

# Our /etc/issue is multiline and it throws their logic in a tizzy.
  sedit 's:cat /etc/issue.net:xargs < /etc/issue.net:g' configure &&

  default_build

) > $C_FIFO 2>&1
