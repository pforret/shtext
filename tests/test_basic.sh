#!/usr/bin/env bash
# test functions should start with test_
# using https://github.com/pgrange/bash_unit

root_folder=$(cd .. && pwd) # tests/.. is root folder
# shellcheck disable=SC2012
# shellcheck disable=SC2035
root_script=$(find "$root_folder"  -maxdepth 1 -name "*.sh" | head -1) # normally there should be only 1

test_no_parameters_shows_usage() {
  # script without parameters should give usage info
  assert "$root_script"
}

test_usage_shows_option_verbose() {
  # script without parameters should show option -v or --verbose
  assert_equals 1 "$("$root_script" 2>&1 | grep -c "Usage")"
  assert_equals 1 "$("$root_script" 2>&1 | grep -c "verbose")"
}
