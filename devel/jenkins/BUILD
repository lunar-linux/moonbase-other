add_priv_user jenkins:jenkins -d /var/lib/jenkins &&

prepare_install &&

install -Dm644 $SOURCE_CACHE/$SOURCE /usr/share/java/jenkins/jenkins.war &&
install -dm750 -o jenkins -g jenkins /var/lib/jenkins
