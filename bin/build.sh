#!/bin/bash

set -e
set -u

# this wipes Orientation tag too
exiftool -P -All= -overwrite_original -r content/

hugo --gc --cleanDestinationDir
