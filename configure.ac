AC_PREREQ([2.69])
AC_INIT([rman], [0.0.2], [hello@thoughtbot.com])
AM_INIT_AUTOMAKE([tar-ustar])

VENDOR_DIRECTORY="vendor/gems"

test -d $VENDOR_DIRECTORY || mkdir -p $VENDOR_DIRECTORY
newer=$(ls -t $srcdir/Gemfile.lock $VENDOR_DIRECTORY/setup.rb 2>/dev/null | (read n; echo $n))
if test "$newer" == "$srcdir/Gemfile.lock"; then
    rm -rf $VENDOR_DIRECTORY
    $srcdir/vendor/vendorize $VENDOR_DIRECTORY || AC_MSG_ERROR([Vendorizing gems failed])
fi

rubydir=$datadir/$PACKAGE/ruby
pkgrubydir=$rubydir/$PACKAGE
libfiles="$(cd "$(dirname "$0")/lib/rman"; echo *.rb)"
vendorfiles="$(cd "$(dirname "$0")/vendor"; echo $(find gems -type f | grep -v ' '))"
gemsetuppath=$datadir/$PACKAGE/gems/setup.rb

AC_SUBST([rubydir])
AC_SUBST([pkgrubydir])
AC_SUBST([libfiles])
AC_SUBST([vendorfiles])
AC_SUBST([gemsetuppath])

AC_CONFIG_FILES([Makefile lib/rman/Makefile src/Makefile vendor/Makefile man/Makefile])

AC_OUTPUT
