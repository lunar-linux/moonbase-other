(

  # clear variables:
  unset CONFIGURE_SENDMAIL REUSE AGREED JUNK

  # global options for sendmail:
  echo "define(\`confGBINGRP', \`mail')" >> devtools/Site/site.config.m4
  echo "define(\`confMSPQOWN', \`mail')" >> devtools/Site/site.config.m4
  echo "define(\`confTRUSTED_USER', \`mail')" >> devtools/Site/site.config.m4
  echo "define(\`confRUN_AS_USER', \`mail:mail')"  >> devtools/Site/site.config.m4
  #
  echo "define(\`confMANROOT', \`/usr/share/man/man')" >> devtools/Site/site.config.m4

  # 
  # Now try to configure sendmail to create a sendmail.cf for this site
  #

  echo ""
  echo "================"
  echo ""
  echo "Sendmail can now be configured. If you have a working setup and wish"
  echo "to keep exactly the same config you may safely skip this section by"
  echo "answering 'n' to the next question. Alternatively, you can easily"
  echo "reconfigure your current setup by entering the configuration part"
  echo "of the installation by typing 'y'"
  echo ""
  # ask whether we want this at all
  if query "Do you wish to (re)configure sendmail?" y
  then
    # do we have a backup sendmail.mc in /etc/mail???
    if [ -f /etc/mail/sendmail.mc ]; then
      # there exists a previously stored sendmail.mc!
      # suggest using this one to create new config first
      echo ""
      echo "Sendmail was previously configured already and we can re-use"
      echo "this configuration to reconfigure sendmail. Do you wish to"
      echo "use the existing sendmail.mc to reconfigure sendmail?"
      echo ""
      if query "Re-use configuration?" y
      then
        cp /etc/mail/sendmail.mc cf/cf/sendmail.mc
      fi
    fi
  
    # suggest using the default generic-linux.mc if a sendmail.mc
    # does not exist yet (not reusing an old one)
    if [ ! -f cf/cf/sendmail.mc ]; then
      echo ""
      echo "I will put a default config.mc so you can edit it"
      echo "manually. Please refer to the sendmail manual for"
      echo "which features you need to add, change or remove."
      echo "NOW would be a great time to fire up your browser"
      echo "and surf to www.sendmail.org!"
      echo ""
      cp cf/cf/generic-linux.mc cf/cf/sendmail.mc
      echo "Press Enter..."
      read JUNK
    fi
  
    # check for editor
    if [ -z $EDITOR ]; then
      EDITOR=vi
    fi
  
    if [ -z `which $EDITOR` ]; then
      # oops, no editor
      echo "AIEE! I can't find an appropriate editor! please set the EDITOR"
      echo "variable (e.g. export EDITOR=vi) and restart lin sendmail!"
      exit 1
    fi
  
    # fire up editor in a loop
    while [ -z $AGREED ]; do
      $EDITOR cf/cf/sendmail.mc
      echo "Here's the result of the sendmail configuration file compilation,"
      echo "if you don't like it or changed your mind, you can repeat this step"
      echo "by typing 'n' at the next question"
      echo ""
      echo "=== sendmail.cf ==="
      cd cf/cf
      sh Build sendmail.cf
      cd ../..
      echo ""
      
      if query "Use this configuration?" y
      then
        # patch submit.cf
        echo ""
        echo "submit.cf will now be patched so it will run as user 'mail:mail',"
        echo "using the standard submit.mc. This is almost always sufficient for"
        echo "any user."
        echo ""
        echo "=== submit.cf ==="
        cd cf/cf
        echo "define(\`confTRUSTED_USER', \`mail')" >> submit.mc
        echo "define(\`confRUN_AS_USER', \`mail:mail')" >> submit.mc
        sh Build submit.cf
        echo ""
        echo "Press enter to continue with final installation..."
        read JUNK
  
        # here we copy it to the right location:
        mkdir -p /etc/mail
        sh Build install-cf
        cd ../..
        # and our bonus: backup our .mc 2 :)
        cp cf/cf/sendmail.mc /etc/mail/sendmail.mc
        cp cf/cf/submit.mc /etc/mail/submit.mc
        AGREED=y
      else
        AGREED=
      fi
    done
  fi

) && (
  
  #
  # First compile the source code
  #
  # Apply prescan fix
  cd sendmail
  patch_it $SOURCE_CACHE/sendmail_parse_patch "0 -l"
  cd ..
  sh Build

  #
  # Installation of sendmail
  #
  
  # users to be created:
  add_priv_user mail:mail
  
  # directories and files:
  mkdir -p /var/spool/mail
  mkdir -p /var/spool/mqueue
  mkdir -p /var/spool/clientmqueue
  
  # permissions, permissions, permissions!
  chown -R root:mail /etc/mail
  chown mail:mail /var/spool/mail
  chown root:mail /var/spool/mqueue
  chown mail:mail /var/spool/clientmqueue
  
  chmod 1777 /var/spool/mail
  chmod 0750 /var/spool/mqueue
  chmod 0770 /var/spool/clientmqueue
  
  # have sendmail's install do it all over again
  prepare_install
  sh Build install
  
) > $C_FIFO 2>&1
