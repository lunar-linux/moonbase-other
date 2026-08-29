prepare_install

install -D src/wsdd.py /usr/bin/wsdd &&
install -Dm644 etc/systemd/*.{service,socket} -t /usr/lib/systemd/system &&
install -Dm644 $SCRIPT_DIRECTORY/wsdd.defaults /etc/default/wsdd &&

add_priv_user wsdd:wsdd &&
add_priv_user wsdd-discovery:wsdd-discovery &&

sedit 's|;BindsTo=smb|BindsTo=smb|' /usr/lib/systemd/system/wsdd.service &&
sedit '12i After=smb.service' /usr/lib/systemd/system/wsdd.service
