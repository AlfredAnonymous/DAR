#!/bin/sh

FILES=$(ls | grep -vE '.pk3|.sh')

if [ -f balanced_weapons.pk3 ]; then
	rm -f balanced_weapons.pk3
fi

zip -r9 balanced_weapons.pk3 $FILES -x *.sh *.pk3 *.backup* *.dbs*

