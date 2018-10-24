#!/bin/bash
dirname=/home/wanger/code/passphraseless
$dirname/generatekey.expect
input="$dirname/machines"
while read -r hostname
do
	$dirname/copykey.expect $1 $hostname
done < $input
