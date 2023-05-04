#!/bin/bash

set -e
set -u
set -x

# print files bigger than 1 MB
find . -path ./.git -prune -o -type f -size +1M -print

# this wipes the Orientation tag too
exiftool -P -All= -overwrite_original -r content/

hugo --gc --cleanDestinationDir
