Developing
==========

Setup
-----

To build from a fresh checkout:

    ./autogen.sh
    ./configure
    make

Release
-------

1. Update the version in `configure.ac`:

        AC_INIT([rman], [0.0.3], [hello@thoughtbot.com])

2. Verify the tarball:

        make distcheck
        tar -ztf rman-0.0.3.tar.gz | less

3. Tag the repo:

        git checkout master
        git pull --rebase
        git push origin master
        git status
        git tag --sign -m "v0.0.3" v0.0.3
        git push origin master --tags

4. Sign the tarball:

        gpg -sab rman-0.0.3.tar.gz

5. Verify the signature:

        gpg --verify rman-0.0.3.tar.gz.asc rman-0.0.3.tar.gz

6. [Announce the release on
   GitHub](https://github.com/thoughtbot/rman/releases/new).
