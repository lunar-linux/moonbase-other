
  patch_it $SOURCE2 1 &&

# Our /etc/issue is multiline and it throws their logic in a tizzy.
  sedit 's:cat /etc/issue.net:xargs < /etc/issue.net:g' configure &&

  default_build
