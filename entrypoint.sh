#!/bin/bash

set -e

FLAGS=('--init' '--recursive')
if [ $1 ]; then
  FLAGS+=('--remote')
fi

git submodule update "${FLAGS[@]}"
