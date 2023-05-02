#!/bin/bash

set -e
set -u

hugo server \
    --disableFastRender \
    --buildDrafts
