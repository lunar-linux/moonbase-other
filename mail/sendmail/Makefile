#
# Grabbed from a RH box, this makefile will allow you to quickly regen
# the most important sendmail configuration files
#

# the maps we can process:
POSSIBLE += $(shell test -f aliases       && echo aliases.db)
POSSIBLE += $(shell test -f bitdomain     && echo bitdomain.db)
POSSIBLE += $(shell test -f uudomain      && echo uudomain.db)
POSSIBLE += $(shell test -f genericstable && echo genericstable.db)
POSSIBLE += $(shell test -f userdb        && echo userdb.db)
POSSIBLE += $(shell test -f virtusertable && echo virtusertable.db)
POSSIBLE += $(shell test -f access        && echo access.db)
POSSIBLE += $(shell test -f domaintable   && echo domaintable.db)
POSSIBLE += $(shell test -f mailertable   && echo mailertable.db)

all: sendmail.cf submit.cf ${POSSIBLE}

# userdb requires btree hashtype:
userdb.db: userdb
	makemap btree $@ < $<

# aliases
aliases.db: aliases
	newaliases

%.db: %
	makemap hash $@ < $<

%.cf: %.mc
	@echo "Updating \"$@\""
	@if test -f /usr/share/sendmail/m4/cf.m4; then \
		if test -f $@ ; then mv -f $@ $@.bak; fi; \
		/usr/bin/m4 /usr/share/sendmail/m4/cf.m4 $< > $@; \
		chgrp mail $@;\
	fi;

clean:
	rm -f *.db *~

start:
	service sendmail start

stop:
	service sendmail stop

restart:
	service sendmail restart

