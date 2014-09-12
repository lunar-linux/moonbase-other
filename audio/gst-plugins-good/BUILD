
  sedit "/input:/d" sys/v4l2/gstv4l2bufferpool.c &&
  sedit "/case V4L2_CID_HCENTER/d" sys/v4l2/v4l2_calls.c && 
  sedit "/case V4L2_CID_VCENTER/d" sys/v4l2/v4l2_calls.c &&

  OPTS+="  --disable-valgrind  --disable-debug  --disable-examples" &&

  default_build
