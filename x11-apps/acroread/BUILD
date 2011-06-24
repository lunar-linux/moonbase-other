(

 if [ -f /opt/Adobe/Reader9/bin/UNISTALL ]; then
 /opt/Adobe/Reader9/bin/UNISTALL
 fi &&
 rm -rf /opt/Adobe &&
 prepare_install &&
 cd AdobeReader &&
 ./INSTALL --install_path=/opt &&
 cd .. &&
 cp -a acrobat-fonts/* /opt/Adobe/Reader9/Resource &&
 for dir in CHSKIT CHTKIT JPNKIT xtdfont; do
 cd $dir;
 sedit 's/if yesno "Continue installation? " "y"/if true/' INSTALL;
 sedit '/^OutputLicense$/d' INSTALL;
 sedit '/^GetInstallInfo$/d' INSTALL;
 sedit '/^OutputWelcome$/d' INSTALL;
 ./INSTALL;
 cd ..;
 done

) > $C_FIFO 2>&1
