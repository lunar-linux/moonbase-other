(

  # Add syntax highlighting for Lunar's common packaging filenames.
  # Not particularly appropriate for DETAILS though.
  sedit "s:*.sh;:*.sh;BUILD;DEPENDS;:" data/filetype_extensions.conf  &&

  default_build

) > $C_FIFO 2>&1
