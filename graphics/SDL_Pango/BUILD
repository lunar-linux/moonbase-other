# file seems to have changed its _whitespace_ syntax for 64 bit shared objects since 2006
# Whom do I need to shoot to make that go away? -.-
sedit 's:file_magic ELF \[0-9\]\[0-9\]\*-bit \[LM\]SB (shared object|dynamic lib ):file_magic ELF [0-9][0-9]*-bit [LM]SB *(shared object|dynamic lib ):' configure &&

default_build
