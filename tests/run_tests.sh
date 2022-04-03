#!/usr/bin/env bash
script_path=$(dirname "$0")
script_path=$(cd -P "$script_path" && pwd)

clear
if [[ ! -x "$(command -v bash_unit)" ]] ; then
  ## used by Github action or if bash_unit is not installed
  curl -s "https://raw.githubusercontent.com/pgrange/bash_unit/master/bash_unit" -o "$script_path/bash_unit"
  chmod +x "$script_path/bash_unit"
  cd "$script_path" && "$script_path/bash_unit" -f tap test_*
else
  cd "$script_path" && bash_unit -f tap test_*
fi
