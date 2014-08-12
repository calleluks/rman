dist_bin_SCRIPTS = rman
CLEANFILES = $(dist_bin_SCRIPTS)
EXTRA_DIST = rman.in

edit = sed \
	-e 's|@rubydir[@]|$(rubydir)|g' \
	-e 's|@gemsetuppath[@]|$(gemsetuppath)|g'

rman: Makefile rman.in
	$(edit) $(srcdir)/$@.in > $@
	chmod +x $@
