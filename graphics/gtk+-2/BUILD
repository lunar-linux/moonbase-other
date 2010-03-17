(

  if egrep -q '^#define JPEG_LIB_VERSION.*7[0-9]+' /usr/include/jpeglib.h; then
    # Is 7.0 API, rather than old version 6b
    # Old patch: http://repos.archlinux.org/viewvc.cgi/gtk2/repos/extra-i686/
    # Fixes blurry jpegs: http://bugzilla.gnome.org/show_bug.cgi?id=588740
    # http://bugs.gentoo.org/show_bug.cgi?id=282744
    # Info: http://bbs.archlinux.org/viewtopic.php?id=75529
    # Original fix:  sedit "s:cinfo->scale_denom <= 8:cinfo->scale_denom <= 16:" gdk-pixbuf/io-jpeg.c
    patch_it $SOURCE2 0
  fi &&

  # Quieten the "XID collision, trouble ahead" useless, spammy warning
  patch_it $SOURCE3 1 &&

  if [ "$USE_XINPUT" == "y" ]; then
    # XInput support is needed for Wacom tablets to work in GIMP
    OPTS+=" --with-xinput=yes"
  fi &&

  default_build

) > $C_FIFO 2>&1
