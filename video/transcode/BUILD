(

# fixes a compile failure and is temporary. This will be corrected
# in version 1.0.4 then this BUILD can be deleted.
  sedit "s:register_avcodec(&mp2_encoder);::" export/aud_aux.c
  sedit "s:register_avcodec(&ac3_encoder);::" export/aud_aux.c
  sedit "365cavcodec_register_all();" export/aud_aux.c

  OPTS="$OPTS --enable-v4l --enable-libpostproc"

  default_build

) > $C_FIFO 2>&1
