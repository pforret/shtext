#!/usr/bin/env bash
# test functions should start with test_
# using https://github.com/pgrange/bash_unit

root_folder=$(cd .. && pwd) # tests/.. is root folder
# shellcheck disable=SC2012
# shellcheck disable=SC2035
root_script=$(find "$root_folder"  -maxdepth 1 -name "*.sh" | head -1) # normally there should be only 1

test_lower() {
  assert_equals "all is lower" "$(<<< "ALL IS LOWER" "$root_script" lower)"
  assert_equals "aççéńtš" "$(<<< "AÇÇÉŃTŠ" "$root_script" lower)"
  assert_equals "  < just a tést >   " "$(<<< "  < Just A Tést >   " "$root_script" lower)"
}

test_upper() {
  assert_equals "ALL IS UPPER" "$(<<< "all is upper" "$root_script" upper)"
  assert_equals "AÇÇÉŃTŠ" "$(<<< "aççéńtš" "$root_script" upper)"
  assert_equals "  < JUST A TÉST >   " "$(<<< "  < Just A Tést >   " "$root_script" upper)"
}

test_trim() {
  assert_equals "one two three" "$(<<< "    one two three      " "$root_script" trim)"
  assert_equals "< Just A Tést >" "$(<<< "  < Just A Tést >   " "$root_script" trim)"
}

test_alphanum(){
    assert_equals "A-B-C-D-abc" "$(<<< " A  B  C D !{}[]:abcéàèçî    " "$root_script" alphanum)"
    assert_equals "Just-A-Tst" "$(<<< "  < Just A Tést >   " "$root_script" alphanum)"
}

test_slugify(){
    assert_equals "just-a-test" "$(<<< "  < Just A Tést >   " "$root_script" slugify)"
    assert_equals "consternation-1-2-3-end" "$(<<< "Consternatîôñ    1 2 3      !(){}[]::;^  end" "$root_script" slugify)"
    assert_equals "a-a" "$(<<< "a[!^%&*£+§']a" "$root_script" slugify)"
}

test_ascii(){
    assert_equals "International" "$(<<< "Îñtérñåtìôńāl" "$root_script" ascii)"
}
