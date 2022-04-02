[![Shellcheck CI](https://github.com/pforret/shtext/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/pforret/shtext/actions/workflows/shellcheck.yml)
[![bash_unit CI](https://github.com/pforret/shtext/actions/workflows/bash_unit.yml/badge.svg)](https://github.com/pforret/shtext/actions/workflows/bash_unit.yml)
![GH Language](https://img.shields.io/github/languages/top/pforret/shtext)
![GH stars](https://img.shields.io/github/stars/pforret/shtext)
![GH tag](https://img.shields.io/github/v/tag/pforret/shtext)
![GH License](https://img.shields.io/github/license/pforret/shtext)
[![basher install](https://img.shields.io/badge/basher-install-white?logo=gnu-bash&style=flat)](https://basher.gitparade.com/package/)

# shtext

![pforret/shtext](assets/unsplash.editor.jpg)

Fast text manipulation in bash

## 🔥 Usage

```bash
Program: shtext 0.1.0 by peter@forret.com
Updated: Apr  2 22:00:09 2022
Description: perform fast text/string operations in bash
Usage: shtext [-h] [-q] [-v] [-f] [-l <log_dir>] [-t <tmp_dir>] <action>
Flags, options and parameters:
    -h|--help        : [flag] show usage [default: off]
    -q|--quiet       : [flag] no output [default: off]
    -v|--verbose     : [flag] output more [default: off]
    -f|--force       : [flag] do not ask for confirmation (always yes) [default: off]
    -l|--log_dir <?> : [option] folder for log files   [default: /Users/pforret/log/shtext]
    -t|--tmp_dir <?> : [option] folder for temp files  [default: /tmp/shtext]
    <action>         : [choice] text action to perform  [options: lower,upper]
                                  @github.com:pforret/shtext.git                                             
### TIPS & EXAMPLES
* use shtext lower to convert to lowercase
* use shtext upper to convert to uppercase
* use shtext check to check if this script is ready to execute and what values the options/flags are
  shtext check
* use shtext env to generate an example .env file
  shtext env > .env
* use shtext update to update to the latest version
  shtext check
* >>> bash script created with pforret/bashew
* >>> for bash development, also check out pforret/setver and pforret/progressbar
```

## ⚡️ Examples

```bash
< $largefile.txt shtext lower
<<< "Some Éxtra Text" shtext upper
```

## 🚀 Installation

with [basher](https://github.com/basherpm/basher)

	$ basher install pforret/shtext

or with `git`

	$ git clone https://github.com/pforret/shtext.git
	$ cd shtext

## 📝 Acknowledgements

* script created with [bashew](https://github.com/pforret/bashew)

&copy; 2022 Peter Forret
