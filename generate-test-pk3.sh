#!/bin/sh

FILES=$(ls | grep -vE '.pk3|.sh')
CURRENT_REVISION=$(git log --pretty=format:'%h' -n 1)

if [ -f balanced_weapons-$CURRENT_REVISION.pk3 ]; then
	rm -f balanced_weapons-$CURRENT_REVISION.pk3
fi

zip -9r balanced_weapons-$CURRENT_REVISION.pk3 $FILES -x *.backup* *.dbs *.bak *.db
