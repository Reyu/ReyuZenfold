#!/bin/sh
docker run --name yesod-devel --rm -it -v $(pwd):/code -p 3000:3000 jhedev/yesod-docker bash -c 'cd /code && cabal install -j --enable-tests --max-backjumps=-1 --reorder-goals && yesod devel'
