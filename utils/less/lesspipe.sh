#!/bin/bash
case "$1" in
*.Z) uncompress -c $1  2>/dev/null
     ;;
*.gz) zcat $1 2>/dev/null
     ;;
esac
