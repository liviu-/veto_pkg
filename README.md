# veto_pkg

## Overview
Sometimes I [go through the packages](https://github.com/liviu-/miniskripts/blob/5f257d75e5ea6a258910cfafd693d6bab172fda1/miniskripts/list_packages.sh) I installed using `pacman` and check which ones I want to uninstall. However, I often see myself running `pacman -Qi <package_name>` for a lot of them to check dependencies/description/install date/etc. before deciding what to do with them. This is incovenient as I need to type the package name multiple times to query and to remove, so I created a small script that sorts this out.

## Installation
Please be warned that this appends extra lines to your startup script (e.g. `.zshrc` or `.bashrc`) in order to add autocompletion support. I suggest you check the source code before using the command. 

    $ source install.sh
    
## Usage

    $ veto_pkg coreu<Tab>
    $ veto_pkg coreutils
    Name            : coreutils
    Version         : 8.25-2
    Description     : The basic file, shell and text manipulation utilities of the GNU operating system
    Architecture    : x86_64
    URL             : http://www.gnu.org/software/coreutils
    Licenses        : GPL3
    Groups          : base
    Provides        : None
    Depends On      : glibc  acl  attr  gmp  libcap  openssl
    Optional Deps   : None
    Required By     : ca-certificates-utils  linux  mkinitcpio  netctl  util-linux
    Optional For    : usbutils
    Conflicts With  : None
    Replaces        : None
    Installed Size  : 13.22 MiB
    Packager        : Sébastien Luttringer <seblu@seblu.net>
    Build Date      : Sat 14 May 2016 13:50:37 BST
    Install Date    : Thu 02 Jun 2016 20:00:39 BST
    Install Reason  : Explicitly installed
    Install Script  : No
    Validated By    : Signature
    [K]eep | [U]ninstall | Uninstall with [D]ependencies | Uninstall Dependencies [R]ecursively
    K
    $


## Licence

MIT
