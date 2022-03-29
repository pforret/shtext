![Shellcheck CI](https://github.com/pforret/shtext/workflows/Shellcheck%20CI/badge.svg)
![GH Language](https://img.shields.io/github/languages/top/pforret/shtext)
![GH stars](https://img.shields.io/github/stars/pforret/shtext)
![GH tag](https://img.shields.io/github/v/tag/pforret/shtext)
![GH License](https://img.shields.io/github/license/pforret/shtext)
[![basher install](https://img.shields.io/badge/basher-install-white?logo=gnu-bash&style=flat)](https://basher.gitparade.com/package/)

# shtext

![pforret/shtext](assets/unsplash.editor.jpg)

Fast text manipulation in bash

## 🔥 Usage

```
Program: shtext 0.0.1 by peter@forret.com
Updated: 2022-03-29
Description: Text manipulation in bash
Usage: normal.sh [-h] [-q] [-v] [-f] [-l <log_dir>] [-t <tmp_dir>] <action> <input?>
Flags, options and parameters:
    -h|--help        : [flag] show usage [default: off]
    -q|--quiet       : [flag] no output [default: off]
    -v|--verbose     : [flag] output more [default: off]
    -f|--force       : [flag] do not ask for confirmation (always yes) [default: off]
    -l|--log_dir <?> : [option] folder for log files   [default: /Users/pforret/log/normal]
    -t|--tmp_dir <?> : [option] folder for temp files  [default: .tmp]
    <action>         : [parameter] action to perform: analyze/convert
    <input>          : [parameter] input file/text (optional)
```

## ⚡️ Examples

```bash
< $largefile.txt shtext lowercase
< $largefile.csv shtext uppercase
shtext slugify "Alice va à l'école"
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
