(

  cd $SOURCE_DIRECTORY &&

  PREFIX=/usr/games/jfduke3d/

  HRP_DIRS="`find -type d -print | cut -c 3-`"
  HRP_FILES="`find -type f -print | cut -c 3-`"

# Fix a few character case issues
  cd highres/sprites   &&
  sedit "s:enforcerArm:enforcerarm:" jibs.def
  sedit "s:enforcerLeg:enforcerleg:" jibs.def
  sedit "s:Props:props:g" props.def
  sedit "s:MD2:md2:g" signs.def
  sedit "s:_Eye:_eye:g" jibs.def
  sedit "s:Sushiplate4:sushiplate4:g" props.def
  sedit "s:Donuts.:donuts.:g" props.def
  sedit "s:Mailbag.:mailbag.:g" props.def
  sedit "s:Meter.:meter.:g" props.def
  sedit "s:Foodobject11.:foodobject11.:g" props.def
  sedit "s:Foodobject13.:foodobject13.:g" props.def
  sedit "s:Foodobject14.:foodobject14.:g" props.def
  sedit "s:Foodobject15.:foodobject15.:g" props.def
  sedit "s:Foodobject16.:foodobject16.:g" props.def

  cd $SOURCE_DIRECTORY &&
  prepare_install      &&

  install -g games duke3d.def $PREFIX      &&
  install -g games duke3d_hrp.def $PREFIX  &&

  for i in $HRP_DIRS; do
    install -g games -d $i $PREFIX/$i
  done

  for i in $HRP_FILES; do
    install -g games $i $PREFIX/$i
  done

  gather_docs hrp_readme.txt

) > $C_FIFO 2>&1
