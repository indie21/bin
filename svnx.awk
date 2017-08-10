@include "/Users/zhuoyikang/source/bin/ignore.awk"
{

    if(ignores[$2]!= "true") {
        print
    }
}
