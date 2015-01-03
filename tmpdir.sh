#!/bin/bash

TERM_TMPDIR="/tmp/tmpdir/$RANDOM"

tmpdir () {
  mkdir -p "$TERM_TMPDIR"
  cd "$TERM_TMPDIR"
}

_tmpdir_on_exit () {
  if [ -d "$TERM_TMPDIR" ]; then
    rm -rf "$TERM_TMPDIR"
    rmdir /tmp/tmpdir &>/dev/null || true
  fi
}

trap _tmpdir_on_exit EXIT
