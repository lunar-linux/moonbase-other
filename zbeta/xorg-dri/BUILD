(
   cp $CONFIG_CACHE/host.def.dri xc/xc/config/cf/host.def &&
   
   # This must happen or it will cause the module to break
   # claiming "Kernel only header included in userspace"
   cp -rL /usr/src/linux/include/linux/{autoconf.h,config.h} /usr/include/linux &&

   echo "Compiling DRI Modules for XOrg" &&
   cd $SOURCE_DIRECTORY/xc/xc            &&
   make World                            &&

   echo "Installing new DRI Libs and Modules" &&
   cp -rL exports/lib/modules/dri/*.so /usr/X11R6/lib/modules/dri &&
   cp -rL exports/lib/modules/extensions/lib{glx,GLcore,dri}.a /usr/X11R6/lib/modules/extensions &&
   cp -rL exports/lib/modules/linux/libdrm.a /usr/X11R6/lib/modules/linux &&

   cp -rL exports/lib/modules/drivers/*_drv.o /usr/X11R6/lib/modules/drivers &&
 
   cp -rL exports/lib/*{GL,Mesa}* /usr/X11R6/lib &&
   cd /usr/X11R6/lib &&

# ldconfig will bitch about how these are not symbolic links if they
# arn't removed
   rm libGL.so.1 libOSMesa.so.4 &&

   ldconfig &&
 
   echo "Building DRM"                   &&
   cd $SOURCE_DIRECTORY/drm/linux        &&
   make   				 &&
   mkdir -p /lib/modules/`uname -r`/kernel/drivers/ &&
   cd $SOURCE_DIRECTORY/drm/linux        &&
   cp -L *.ko /lib/modules/`uname -r`/kernel/drivers/ &&
   depmod -a

) > $C_FIFO 2>&1
   
