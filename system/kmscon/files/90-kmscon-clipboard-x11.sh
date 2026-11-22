#!/bin/sh
# Sourced by /etc/X11/xinit/xinitrc.d from an unprivileged X11 session.
# Do not use "exit" here: it would terminate the caller's xinitrc.
(
    [ -n "${DISPLAY:-}" ] || exit 0
    command -v kmscon-clipboard-x11 >/dev/null 2>&1 || exit 0

    # KMSCON's system service must use this same socket path.
    sock="${HOME}/.cache/kmscon-clipboard-x11.sock"
    [ -n "${HOME:-}" ] || exit 0
    mkdir -p -- "${HOME}/.cache" || exit 0

    if [ -e "$sock" ] || [ -S "$sock" ]; then
        [ -S "$sock" ] || exit 0  # Never overwrite an unrelated path.
        # Paste may fail when the X11 selection is unavailable, even though
        # the backend is running. Only ECONNREFUSED means stale socket here.
        error=$(LC_ALL=C kmscon-clipboard-x11 paste "$sock" </dev/null 2>&1 >/dev/null)
        case "$error" in
            *'connect: Connection refused'*)
                [ -S "$sock" ] || exit 0
                rm -f -- "$sock" || exit 0
                ;;
            *) exit 0 ;;  # Healthy backend, or an error we cannot classify.
        esac
    fi

    # Keep the backend in this user's X11 environment, not the system dinit.
    kmscon-clipboard-x11 serve "$sock" </dev/null >/dev/null 2>&1 &
)
