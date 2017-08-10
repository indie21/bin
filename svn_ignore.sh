#/bin/bash

echo "BEGIN { " > /Users/zhuoyikang/source/bin/ignore
svn status | awk '$1=="?"{print $2}' | awk '{print "ignores[\""$1"\"]=true"}' >> /Users/zhuoyikang/source/bin/ignore
echo "} " >>  /Users/zhuoyikang/source/bin/ignore
