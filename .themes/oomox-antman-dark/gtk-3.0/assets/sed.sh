#!/bin/sh
sed -i \
         -e 's/#1f2223/rgb(0%,0%,0%)/g' \
         -e 's/#c2c0c0/rgb(100%,100%,100%)/g' \
    -e 's/#1f2223/rgb(50%,0%,0%)/g' \
     -e 's/#493434/rgb(0%,50%,0%)/g' \
     -e 's/#1f2223/rgb(50%,0%,50%)/g' \
     -e 's/#c2c0c0/rgb(0%,0%,50%)/g' \
	"$@"
