#! /bin/bash

while IFS= read -r cmd
do
	cmd_name=$(echo "$cmd" | egrep -v "IFS|.sh$" | cut -d ' ' -f1)
	echo "$cmd" > "$cmd_name"
done < <(whatis {cut,sort,join,paste})
