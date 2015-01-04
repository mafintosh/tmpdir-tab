#!/bin/bash

tmpdir () {
  [ "$TMPDIR_TAB" == "" ] && TMPDIR_TAB="$(mktemp -d /tmp/tmpdir/XXXXXX)"
  cd "$TMPDIR_TAB"
}

_tmpdir_on_exit () {
  if [ "$TMPDIR_TAB" != "" ] && [ -d "$TMPDIR_TAB" ]; then
    rm -rf "$TMPDIR_TAB"
    rmdir /tmp/tmpdir &>/dev/null || true
  fi
}

trap _tmpdir_on_exit EXIT
