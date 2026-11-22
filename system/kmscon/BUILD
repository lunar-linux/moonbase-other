OPTS+=" --prefix=/usr \
        --libdir=lib \
        --sysconfdir=/etc \
        --buildtype=release \
        -D tests=false \
        -D docs=enabled \
        -D libseat=disabled \
        -D video_fbdev=disabled \
        -D video_drm2d=enabled \
        -D video_drm3d=disabled \
        -D renderer_gltex=auto \
        -D font_psf=auto \
        -D font_unifont=auto \
        -D dbus=auto" &&

default_meson_build &&

# Systemd supoport removed if the module ids not installed
if ! module_installed systemd; then
   rm -f /usr/lib/systemd/system/kmscon.service &&
   rm -f /usr/lib/systemd/system/kmsconvt@.service
fi &&

# The X11 clipboard support
if module_installed libX11; then
   make -C clipboard/x11 kmscon-clipboard-x11 &&
   install -Dm755 clipboard/x11/kmscon-clipboard-x11 \
      "/usr/bin/kmscon-clipboard-x11" &&
   install -Dm755 "$SCRIPT_DIRECTORY/files/90-kmscon-clipboard-x11.sh" \
      "/etc/X11/xinit/xinitrc.d/90-kmscon-clipboard-x11.sh"
fi &&

# The Wayland clippboard support
if module_installed wayland-protocols; then
   make -C clipboard/wayland kmscon-clipboard-wayland &&
   install -Dm755 clipboard/wayland/kmscon-clipboard-wayland \
      "/usr/bin/kmscon-clipboard-wayland" &&
   install -Dm755 "$SCRIPT_DIRECTORY/files/kmscon-clipboard-wayland-session" \
      "/usr/bin/kmscon-clipboard-wayland-session" &&
   install -Dm644 "$SCRIPT_DIRECTORY/files/kmscon-clipboard-wayland.desktop" \
      "/usr/share/kmscon/kmscon-clipboard-wayland.desktop"
fi &&

if module_installed dinit; then
   install -Dm644 "$SCRIPT_DIRECTORY/files/kmscon-X11" \
      "/usr/share/kmscon/dinit/kmscon-X11" &&
   install -Dm644 "$SCRIPT_DIRECTORY/files/kmscon-clipboard-x11.env" \
      "/etc/kmscon/clipboard-x11.env" &&

   install -Dm644 "$SCRIPT_DIRECTORY/files/kmscon-Wayland" \
      "/usr/share/kmscon/dinit/kmscon-Wayland" &&
   install -Dm644 "$SCRIPT_DIRECTORY/files/kmscon-clipboard-wayland.env" \
      "/etc/kmscon/clipboard-wayland.env"
fi &&

install -Dm644 COPYING "/usr/share/licenses/kmscon/COPYING"

