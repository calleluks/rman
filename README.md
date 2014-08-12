rman
====

Generate man pages for your installed ruby versions.

Installation
------------

1. Download the latest release from [the `rman` Releases
   page](https://github.com/thoughtbot/rman/releases) and extract the archive:

        tar -zxvf rman-VERSION.tar.gz

2. Follow the bundled installation instructions:

        cd rman-VERSION
        less INSTALL.md

Usage
-----

To generate and install man pages for your current ruby version into your
`~/.man` directory, run `rman` from your shell:

    rman

To generate and install man pages for other installed ruby version, switch to
the desired version before running `rman`.

Copyright
---------

Copyright (c) 2014 Calle Erlandsson & thoughtbot, Inc.

Lead by Calle Erlandsson & thoughtbot, Inc.
