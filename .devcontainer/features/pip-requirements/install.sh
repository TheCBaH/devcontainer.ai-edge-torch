#!/bin/sh
set -e
set -x

echo "Activating feature 'pip_requirements'"

python3 -m pip --no-cache-dir install -r requirements.txt

python3 -m pip --no-cache-dir install torch ai-edge-model-explorer
