#!/bin/sh

FILES=$(ls | grep -vE '.pk3|.sh')

if [ -f DAR.pk3 ]; then
	rm -rf DAR.pk3
fi

zip -r9 DAR.pk3 $FILES -x *.sh *.pk3

