#!/bin/bash

tmpdir () {
  [ "$TMPDIR_TAB" == "" ] && export TMPDIR_TAB="$(mkdir -p /tmp/tmpdir && mktemp -d /tmp/tmpdir/XXXXXX)"
  if [ -t 1 ]; then
    cd "$TMPDIR_TAB"
  else
    echo "$TMPDIR_TAB"
  fi
}

_tmpdir_on_exit () {
  if [ "$TMPDIR_TAB" != "" ] && [ -d "$TMPDIR_TAB" ]; then
    rm -rf "$TMPDIR_TAB"
    rmdir /tmp/tmpdir &>/dev/null || true
  fi
}

trap _tmpdir_on_exit EXIT
