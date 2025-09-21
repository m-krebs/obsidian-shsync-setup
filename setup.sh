#!/bin/bash

if [ -z "$1" ]; then
  vaultname="my-vault"
else
  echo "Using vault-name: ${1}"
  vaultname="$1"
fi

git clone https://github.com/m-krebs/obsidian-shsync-setup.git "$vaultname"

rm -rf "${vaultname}/.git" "${vaultname}/setup.sh" "${vaultname}/README.md"
