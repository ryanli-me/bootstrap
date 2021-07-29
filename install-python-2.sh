#!/bin/bash

set -ex

export CFLAGS="-I$(brew --prefix openssl)/include -I$(brew --prefix readline)/include -I$(xcrun --show-sdk-path)/usr/include"
export LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix readline)/lib -L$(xcrun --show-sdk-path)/usr/lib -L$(brew --prefix zlib)/lib"
export CPPFLAGS="-L/opt/homebrew/opt/zlib/lib"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
export ASDF_PYTHON_PATCH_URL="https://github.com/python/cpython/commit/8ea6353.patch?full_index=1"

asdf install python 2.7.18
