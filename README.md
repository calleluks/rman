rman(1)
=======

`rman(1)` is a tool for generating and installing manual pages for `ruby(1)` core
modules, classes and methods. It does so by parsing the `ri(1)` formatted
documentation that is bundled with the `ruby(1)` distribution.

**Please note**: `rman(1)` is **experimental software**. It probably has some
[issues](https://github.com/thoughtbot/rman/issues). If you find one, please
report it through the issue tracker. If you'd like to help develop `rman(1)`,
please see the instructions in
[`CONTRIBUTING.md`](https://github.com/thoughtbot/rman/blob/master/CONTRIBUTING.md).
Pull requests are very welcome.

Installation
------------

1. Download the latest release from [the `rman(1)` Releases
   page](https://github.com/thoughtbot/rman/releases) and extract the archive:

        tar -zxvf rman-VERSION.tar.gz

2. Follow the bundled installation instructions:

        cd rman-VERSION
        less INSTALL.md

Usage
-----

    rman [-v | --version] [-h | --help]

Generated manual pages are installed in the `~/.man` directory.

`rman(1)` will generate manual pages for the `ruby(1)` version that is found in
the environment `rman(1)` is run in. To generate manual pages for other
installed `ruby(1)` versions, switch `ruby(1)` version and make sure
`/usr/bin/env ruby -v` reports the desired version before running `rman(1)`.

To access the installed manual pages using `man(1)`, `~/.man` must be added to
the `man(1)` manual page search path. On many systems this can be done by adding
`~/.man` to the `MANPATH` environment variable. For details on how how to add
`~/.man` to the `man(1)` manual page search path see `man(1)`.

Copyright
---------

Copyright (c) 2014 Calle Erlandsson & thoughtbot, Inc.

Lead by Calle Erlandsson & thoughtbot, Inc.
