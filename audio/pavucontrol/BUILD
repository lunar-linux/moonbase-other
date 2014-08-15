OPTS+=" --disable-gtk3"

# hm, maybe gtk3mm has this as a RefPtr?
sedit "s/Gtk::Adjustment::create/new Gtk::Adjustment/" src/devicewidget.cc &&
sedit "s/configure(offsetAdjustment/configure(*offsetAdjustment/" src/devicewidget.cc &&
sedit "s/.*offsetAdjustment/Gtk::Adjustment *offsetAdjustment/" src/devicewidget.h &&

default_build

install -Dm 644 {"$SCRIPT_DIRECTORY",/usr/share/applications}/pavucontrol.desktop

