#!/usr/bin/env bash

set -e
set -u

#hugo server --disableFastRender
hugo server --disableFastRender \
    --buildDrafts
