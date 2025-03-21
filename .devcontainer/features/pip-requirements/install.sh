#!/bin/sh
set -e
set -x

echo "Activating feature 'pip_requirements'"

python3 -m pip config set global.break-system-packages true
python3 -m pip --no-cache-dir install -r requirements.txt \
 --index-url https://download.pytorch.org/whl/cpu \
 --extra-index-url https://pypi.python.org/simple \

python3 -m pip --no-cache-dir install torch ai-edge-model-explorer
