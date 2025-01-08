#!/bin/bash

set -e
set -u

hugo server \
    --renderToMemory \
    --disableFastRender \
    --buildDrafts \
    --buildFuture
