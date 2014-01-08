#!/usr/bin/env bash

mcrl22lps bridge.mcrl2 bridge.lps

files=`find . -name '*.mcf' | sort`

for f in $files
do
	result=`lps2pbes bridge.lps -f "$f" | pbes2bool`
	echo "$f: $result"
done
