AUTOMAKE_OPTIONS = foreign
SUBDIRS = src lib/rman vendor man
EXTRA_DIST = LICENSE README.md INSTALL.md INSTALL.md.in

edit_package = sed -e 's|@PACKAGE_VERSION[@]|$(PACKAGE_VERSION)|g'

INSTALL.md: INSTALL.md.in
	$(edit_package) $@.in > $@
