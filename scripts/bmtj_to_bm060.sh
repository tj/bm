#!/bin/bash


originalBM="${HOME}/Dropbox/bookmarks"
newBM="${HOME}/bm.lnk"

die() { echo "${@}"; exit 1; }

[[ ! -f "${originalBM}" ]] && die "Please update this script to to tell where is your old bookmark. Aborting."
[[ -f "${newBM}" ]] && die "A file already exist with this name ${newBM} (remove the file or edit the script). Aborintg."

[[ $(awk -F'|' '(NF > 3) { print $0;exit 2; }' "${originalBM}") -ne 0 ]] && die "Either your old file is not readable or some lines have more than 3 fields"

A=0
IFS='|'
while read u T t; do
	m="$(md5sum <<< "${u}")"
	d="$(date "+%FT%TZ")"
	((A++))
	echo "${m%% *}|${d}|:${A}|${u}|${T}|${t//[ 	]/,}" >> "${newBM}"
done < "${originalBM}" 

echo "Export done from ${originalBM} to ${newBM}. You should execute: bm -S"
