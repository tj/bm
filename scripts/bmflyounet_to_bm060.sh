#!/bin/bash


originalBM="${HOME}/bm.lnk"
backBM="${HOME}/bm.lnk.before060"

die() { echo "${@}"; exit 1; }

[[ ! -f "${originalBM}" ]] && die "Please update this script to to tell where is your current bookmark. Aborting."
[[ -f "${backBM}" ]] && die "A file already exist with this name ${backBM} (remove the file or edit the script). Aborintg."

cp -f -- "${originalBM}" "${backBM}" || die "Unable to backup your bookmarks fie. Aborting."

awk -F'|' 'BEGIN {OFS="|";} {$1=$1 "|" $NF; $NF=""; print $0;}' "${backBM}" | sed -e 's;|$;;' > "${originalBM}"

echo "Export done for ${originalBM} (backup is ${backBM}). You should execute: bm -S"
