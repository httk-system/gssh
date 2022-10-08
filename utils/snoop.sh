#!/bin/bash

AGENT=$(gpgconf --list-dirs agent-extra-socket)

trap 'mv "${AGENT}.orig" ${AGENT}' EXIT
mv "${AGENT}" "${AGENT}.orig"
socat -t100 -x -v UNIX-LISTEN:"${AGENT}",mode=777,reuseaddr,fork UNIX-CONNECT:"${AGENT}.orig"
