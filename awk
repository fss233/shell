==跨行分割
cat end.txt |awk ' BEGIN {  RS = "===" } { print $1 ,$2,$3}'
==两行 算一行
sed -n '{N;s/\n/\t/p}' test.txt
==三行 算一行
sed 'N;N;s/\n/ /g' test.txt
awk 'ORS=NR%3?" ":"\n"{print}' test.txt

==求和
cat a.txt | awk '{sum += $1};END {print sum}'

