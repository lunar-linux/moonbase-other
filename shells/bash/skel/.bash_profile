# .bash_profile - the per-user bash interactive shell customization file
# you can use this file to customize your bash's behaviour

# note we DO NOT source /etc/profile here, since it has already been
# executed when this file is processed.

# The user is encouraged to enter these values, so we 
# put em on top of this file so they are easy to spot:

# export DEFAULTKDE=
# EDITOR=
# LANG=

# if the user didn't set them we might as well give defined system defaults:
LANG=${LANG:-en_US}
[ -z "$EDITOR" ] && {
    # an editor has not been set, go find a decent one, the last one
    # found in the row is picked and set.
    [ -x /usr/bin/pico  ] && EDITOR="pico"
    [ -x /usr/bin/nano  ] && EDITOR="nano"   
    [ -x /usr/bin/elvis ] && EDITOR="elvis"  
    [ -x /usr/bin/vi    ] && EDITOR="vi"     
    [ -x /usr/bin/vim   ] && EDITOR="vim"    
    [ -x /usr/bin/emacs ] && EDITOR="emacs"
    }

# miscellaenous initialization:
umask	022

# Now we can set package specific paths and variables:
for RC in /etc/profile.d/*.rc ; do
    # note we can set the permissions for root-specific scripts:
    [ -r $RC ] && . $RC
done

# '.' comes last and only for non-root users
[ "$UID" -ge 1000 ] && PATH="$PATH:."

# finished
export EDITOR PATH LANG

