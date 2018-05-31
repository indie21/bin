#/bin/bash
cat $@ | awk '{print $1, $2, "`json:\"" $1"\" bson:\""$1"\"`"} '


