#!/bin/sh
sed -i \
         -e 's/#ebebeb/rgb(0%,0%,0%)/g' \
         -e 's/#1a1a1a/rgb(100%,100%,100%)/g' \
    -e 's/#1a1a1a/rgb(50%,0%,0%)/g' \
     -e 's/#646163/rgb(0%,50%,0%)/g' \
     -e 's/#f7f7f7/rgb(50%,0%,50%)/g' \
     -e 's/#1a1a1a/rgb(0%,0%,50%)/g' \
	"$@"
