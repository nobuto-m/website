#!/usr/bin/env bash

set -e
set -u

shopt -s expand_aliases
. ~/.bash_aliases || true

#hugo server --disableFastRender --i18n-warnings
hugo server --disableFastRender --i18n-warnings \
    --buildDrafts
