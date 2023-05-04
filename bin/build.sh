#!/bin/bash

set -e
set -u
set -x

# this wipes the Orientation tag too
exiftool -P -All= -overwrite_original -r content/

hugo --gc --cleanDestinationDir
