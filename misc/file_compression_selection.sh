#! /bin/bash

if [[ $# -ne "1" ]]; then
	echo "Usage: $0 [filename]"
	exit 1
fi

echo "These are the compression programs on this system:"

cat << COMPRESSION
gzip
bzip2
compress
zip
COMPRESSION

echo -n "Which one would you like to use?"
read compression

echo "Compressing $file with $compression"
$compression $file &
