#!/bin/bash

TMPDIR_TAB="/tmp/tmpdir/$RANDOM"

tmpdir () {
  mkdir -p "$TMPDIR_TAB"
  cd "$TMPDIR_TAB"
}

_tmpdir_on_exit () {
  if [ -d "$TMPDIR_TAB" ]; then
    rm -rf "$TMPDIR_TAB"
    rmdir /tmp/tmpdir &>/dev/null || true
  fi
}

trap _tmpdir_on_exit EXIT
