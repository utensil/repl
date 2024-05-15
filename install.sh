#!/bin/bash
set -e

# get script parent directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
lake build
# echo '{"cmd": "#eval Lean.versionString"}'|lake exe repl > /dev/null
rm /usr/local/bin/repl
ln -s $DIR/.lake/build/bin/repl /usr/local/bin/repl
ls -lhta /usr/local/bin/repl
echo '{"cmd": "#eval Lean.versionString"}'|repl
