#!/bin/bash
# Checks that the XML files are well-formed.
set -euo pipefail
cd "$(dirname "$0")/.."
xmllint --noout Kite.xml autoCompletion.xml && echo "xml: well-formed"
