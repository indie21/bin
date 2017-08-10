#/bin/bash

echo "BEGIN { " > /Users/zhuoyikang/source/bin/ignore.awk
svn status | awk '{print $2}' | awk '{print "ignores[\""$1"\"]=\"true\""}' >> /Users/zhuoyikang/source/bin/ignore.awk
echo "} " >>  /Users/zhuoyikang/source/bin/ignore.awk
