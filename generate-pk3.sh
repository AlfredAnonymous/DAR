#!/bin/sh

FILES=$(ls | grep -vE '.pk3|.sh')

if [ -f weapons_balance.pk3 ]; then
	rm -f weapons_balance.pk3
fi

zip -r9 weapons_balance.pk3 $FILES -x *.sh *.pk3

