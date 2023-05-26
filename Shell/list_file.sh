#!/bin/bash

echo "Filename | Permission | Size | Creation Date| Modification Date"

for file in *
do
	perms=$(stat -c "%A" "$file")
	size=$(stat -c "%s" "$file")
	cdate=$(stat -c "%a" "$file")
	mdate=$(stat -c "%y" "$file")

	echo "$file |   $perms |   $size bytes |   $cdate |   $mdate"
done
