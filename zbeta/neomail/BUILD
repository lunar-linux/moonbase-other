(

set -x
#get the Documentroot
DOCROOT=`grep ^DocumentRoot /etc/httpsd/httpd.conf | \
         tail -1                                   | \
         cut -d \" -f 2
         `
#exit if empty
[ -z "$DOCROOT" ] && exit

#get the cgi-bin directory
CGIBIN=`grep "ScriptAlias \/cgi-bin\/" /etc/httpsd/httpd.conf | \
        tail -1                                               | \
        cut -d \" -f 2
        `

#exit if empty
[ -z "$CGIBIN" ] && exit

# things to fix about neomail dir
NEOMAILDIR="\/var\/neomail"
sedit "s/@@@NEOMAILDIR@@@/$NEOMAILDIR/" neomail.template       &&
sedit "s/@@@NEOMAILDIR@@@/$NEOMAILDIR/" neomail-prefs.template &&

# things to fix about timeoffset
TIMEOFFSET=`date +"%z"`
[ -z "$TIMEOFFSET" ] && TIMEOFFSET="+0000"

DOMAINNAME=`dnsdomainname`
[ -z "$DOMAINNAME" ] && DOMAINNAME=localhost

sedit "s/-0500/$TIMEOFFSET/"              neomail.conf.example
sedit "s/\/etc\/passwd/\/etc\/shadow/"    neomail.conf.example
sedit "s/yourdomain\.com/$DOMAINNAME/"    neomail.conf.example
sedit "s/\/images\//\/neomail\/images\//" neomail.conf.example

#lets create a dummy subdir in source dir in order no to break rules
mkdir -p users

set +x
prepare_install 
set -x
# lets install the web components, ie, images etc
mkdir -p       $DOCROOT/neomail
cp -r images   $DOCROOT/neomail


# lets copy the binaries into cgi-bin dir
cp neomail.template        $CGIBIN/neomail.pl
cp neomail-prefs.template  $CGIBIN/neomail-prefs.pl

# lets set the ownership and perms
chown root.mail   $CGIBIN/neomail.pl
chmod 755         $CGIBIN/neomail.pl
chmod g+s         $CGIBIN/neomail.pl
chown root.mail   $CGIBIN/neomail-prefs.pl
chmod 755         $CGIBIN/neomail-prefs.pl
chmod g+s         $CGIBIN/neomail-prefs.pl


# lets create the neomail dirs
BASEDIR="/var/neomail"
mkdir -p          $BASEDIR
chown root.mail   $BASEDIR
chmod 770         $BASEDIR

# lets install
for SUBDIR in users styles templates lang; do
   cp -R $SUBDIR*       $BASEDIR
   chown -R root.mail   $BASEDIR/$SUBDIR
   chmod 770            $BASEDIR/$SUBDIR
   chmod -R -x+X        $BASEDIR/$SUBDIR
done

cp neomail.conf.example $BASEDIR/neomail.conf
cp checklogin.pl        $BASEDIR
chown root.root         $BASEDIR/checklogin.pl
chmod 4755              $BASEDIR/checklogin.pl

set +x 
) > $C_FIFO 2>&1
