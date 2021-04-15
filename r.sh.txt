#!/bin/bash
rm -f lop
k=8
m=""
p=0
a=0
i=10

for ((i=0;i<k;++i ))
do
unset d
d=$(chr 33)
c[i]="$d"
done

while [ $k -lt 16 ]
do
unset m
m=""
for ((i=0;i<k;++i))
do
m=$m"${c[i]}"
done
echo "$m"
echo "$m">>lop

for ((i=0;i<k;++i))
do
unset d
d=$(rchr "${c[i]}")
if [ $d -ne 126 ]
then
((p++))
fi
unset d
done

unset d
unset a
a=0

if [ $p -eq 0 ]
then
for ((i=0;i<k;++i))
do
unset c[i]
c[i]="$(chr 33)"
a=$((a++))
done
k=$((k+1));
fi

if [ $a -ne 0 ]
then
continue
fi

f=$((k-1))
i=$f

while [ $i -gt 0 ] || [ $i -eq  0 ]
do
unset y
y=$(rchr "${c[i]}")
if [ $y -lt 126 ]
then
unset d
d=$y
echo i=$i
echo d=$d
d=$((d+1))
unset c[i]
c[i]="$(chr $d)"
i=$((i-1))
break
fi
if [ $y -eq 126 ]
then
unset d
d="$(chr 33)"
unset c[i]
c[i]=$d
i=$((i-1))
continue
fi
i=$((i-1))
done
done
