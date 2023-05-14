#!/bin/bash

set -e
set -u

# print files bigger than 1 MB
find . -path ./.git -prune -o -type f -size +1M -print

# this wipes the Orientation tag too, use exifautotran by hand
exiftool -P -All= -overwrite_original -r content/

hugo --gc --cleanDestinationDir

[ "$#" = 0 ] && exit

if [ "$1" = '--tidy=true' ]; then
    # tidy up for a human readable diff instead of `hugo --minify`
    find public/ -name '*.html' \
        -exec tidy \
            -q \
            --keep-time yes \
            --tidy-mark no \
            --clean no \
            --wrap 0 \
            --indent auto \
            --indent-spaces 2 \
            --vertical-space yes \
            --preserve-entities yes \
            --drop-empty-elements no \
            --drop-empty-paras no \
            --quote-ampersand no \
            --warn-proprietary-attributes no \
            --show-warnings no \
            -modify {} \;
elif [ "$1" = '--trim-blank-lines=true' ]; then
    find public/ -name '*.html' \
        -exec sed -i -e '/^ *$/d' {} \;
fi
