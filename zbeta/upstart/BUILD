{

    default_build &&
    cp -r $SCRIPT_DIRECTORY/init/* /etc/init
    message "******************************************************************"
    message ""
    message "WARNING: This version of upstart has installed init and its"
    message "         supporting scripts in /usr/sbin, not in /sbin." 
    message ""
    message "         Be sure you update your kernel to run /usr/sbin/init"
    message "         by either the following parameter:"
    message ""
    message "             init=/usr/sbin/init"
    message ""
    message "         to the boot line in either your lilo or grub config."
    message ""
    message "******************************************************************"
}
