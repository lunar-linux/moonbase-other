#!/bin/sh

# Preprocessor for 'less'. Used when this environment variable is set:
# LESSOPEN="|lesspipe.sh %s"

lesspipe() {

  case "$1" in

  *.tar.bz2) tar tjvvf $1 2>/dev/null ;;
  *.bz2) bzip2 -dc $1 2>/dev/null ;;
  *.tar) tar tvvf $1 2>/dev/null ;;
  *.tbz2) tar tjvvf $1 2>/dev/null ;;
  *.tbz) tar tjvvf $1 2>/dev/null ;;
  *.tar.gz) tar tzvvf $1 2>/dev/null ;;
  *.tgz) tar tzvvf $1 2>/dev/null ;;
  *.tar.z) tar tzvvf $1 2>/dev/null ;;
  *.tar.Z) tar tzvvf $1 2>/dev/null ;;
  *.z) gzip -dc $1  2>/dev/null ;;
  *.Z) gzip -dc $1  2>/dev/null ;;
  *.zip) unzip -l $1 2>/dev/null ;;
  *.rpm) rpm -qilp "$1" 2>/dev/null ;;
  *.[1-9] | *.n | *.man)
    [ "$(file -L $1 | cut -d ' ' -f 2)" = "troff" -o \
    "$(file -L $1 | cut -d ' ' -f 2)" = "ASCII" ] &&
    groff -S -s -p -t -e -Tascii -mandoc "$1" 2>/dev/null ;;
  *.[1-9].gz | *.n.gz | *.man.gz)
    [ "$(gzip -dc $1 2>/dev/null|file -|tr -s ' '|cut -d ' ' -f3)" = "troff" -o \
    "$(gzip -dc $1 2>/dev/null|file -|tr -s ' '|cut -d ' ' -f3)" = "ASCII" ] &&
    gzip -dc $1 2>/dev/null | groff -S -s -p -t -e -Tascii -mandoc ;;
  *.gz) gzip -dc $1  2>/dev/null ;; # keep this after the above statement :)
  *) FILE="$(file -L $1)"
    FILE1="$(echo $FILE | cut -d ' ' -f 2)"
    FILE2="$(echo $FILE | cut -d ' ' -f 3)"
    [ "$FILE1" = "Linux/i386" -o "$FILE2" = "Linux/i386" -o \
      "$FILE1" = "ELF" -o "$FILE2" = "ELF" ] && strings $1 ;;

  esac
}

lesspipe $1
