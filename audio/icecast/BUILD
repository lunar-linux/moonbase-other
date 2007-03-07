(

# Another curl-7.16.1 fix
  sedit "s:curl_easy_setopt (url_info->handle, CURLOPT_PASSWDFUNCTION, my_getpass);::" src/auth_url.c

  default_build

) > $C_FIFO 2>&1
