(

  rm CMakeCache.txt Makefile &&

  sed -i "27i #include <FTGL/ftgl.h>" Renderer/Renderer.hpp &&

  cd presets &&
  mv "Geiss - Cruzin'.milk" "Geiss - Cruzin.milk" &&
  mv "Geiss & Sperl - Cruzin' (Moody).prjm" "Geiss & Sperl - Cruzin (Moody).prjm" &&
  mv "Idiot & Zylot - Unhealthy Love (Idiot's STDs Mix).milk" "Idiot & Zylot - Unhealthy Love (Idiots STDs Mix).milk" &&
  mv "Krash and Rovastar - Rainbow Orb 2 Peacock (Bmelgren's Comp.milk" "Krash and Rovastar - Rainbow Orb 2 Peacock (Bmelgrens Comp.milk" &&
  mv "nil - Can't Stop the Blithering.milk" "nil - Cant Stop the Blithering.milk" &&
  mv "nil - Can't Stop the Cramming.milk" "nil - Cant Stop the Cramming.milk" &&
  mv "Rovastar - Altars Of Harlequin's Madness (Dark Disorder Mix.milk" "Rovastar - Altars Of Harlequins Madness (Dark Disorder Mix.milk" &&
  mv "Rovastar - Harlequin's Dynamic Fractal (Crazed Spiral Mix).milk" "Rovastar - Harlequins Dynamic Fractal (Crazed Spiral Mix).milk" &&
  mv "Rovastar - Harlequin's Fractal Encounter.milk" "Rovastar - Harlequins Fractal Encounter.milk" &&
  mv "Rovastar - Pandora's Volcano.milk" "Rovastar - Pandoras Volcano.milk" &&
  mv "Rovastar & Zylot - Narell's Fever.milk" "Rovastar & Zylot - Narells Fever.milk" &&
  mv "StudioMusic - It's Only Make Believe.milk" "StudioMusic - Its Only Make Believe.milk" &&
  mv "Unchained - Morat's Final Voyage.milk" "Unchained - Morats Final Voyage.milk" &&
  mv "Zylot - Azirphaeli's Mirror.milk" "Zylot - Azirphaelis Mirror.milk"
  cd .. &&

  default_cmake_config &&

  sedit "s:libdir=:libdir=/usr/lib:" ../libprojectM.pc &&

  default_make 

) > $C_FIFO 2>&1
