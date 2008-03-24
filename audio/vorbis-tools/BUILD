(
# This fixes the BUILD with curl-7.16.1. See https://trac.xiph.org/ticket/1136
# This IMV is the easy way out instead of fiddling with uploading a patch, blah.
  sedit "s:curl_easy_setopt(handle, CURLOPT_MUTE, 1);::" ogg123/http_transport.c &&
  default_build
) > $C_FIFO 2>&1
