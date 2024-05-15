#!/bin/bash
set -e

./install.sh && cat test/dup_msg.in| repl
