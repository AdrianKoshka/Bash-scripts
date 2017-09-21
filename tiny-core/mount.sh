#!/bin/sh

# Variables

ORIGIN="/dev/sdb"
MNTDIR="/mnt/sdb"

# Functions
mntit ()
{
mount $ORIGIN $MNTDIR
}

ownit ()
{
chown $USER:staff -R $MNTDIR
}

# Execution
mntit && ownit
