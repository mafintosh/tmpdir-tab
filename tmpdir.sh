#!/bin/bash

TMPDIR="/tmp/tmpdir/$RANDOM"

tmpdir () {
  mkdir -p "$TMPDIR"
  cd "$TMPDIR"
}

_tmpdir_on_exit () {
  rm -rf "$TMPDIR"
}

trap _tmpdir_on_exit EXIT
