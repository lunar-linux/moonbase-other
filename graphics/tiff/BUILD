(

  # Apply all 6 patches from libtiff-3.8.2-15.fc12 - http://koji.fedoraproject.org/koji/packageinfo?packageID=328
  # http://www.gentoo.org/security/en/glsa/glsa-200908-03.xml
  # Patch0: tiffsplit-overflow.patch
  # Patch1: libtiff-3.8.2-ormandy.patch
  # Patch2: libtiff-3.8.2-CVE-2006-2193.patch
  # Patch3: libtiff-3.8.2-mantypo.patch
  # Patch4: libtiff-3.8.2-lzw-bugs.patch
  # Patch5: libtiff-3.8.2-CVE-2009-2347.patch
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  
  default_build

) > $C_FIFO 2>&1
