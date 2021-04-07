#!/bin/bash
rm -f lop
k=8
m=""
p=0
numo=16
i=10

for ((i=0;i<k;++i ))
do
d=$(chr 33)
${c[i]}=$d
done

while [ $k -lt 16 ]
do
unset m
m=""
for ((i=0;i<k;++i))
do
m=$m${c[i]}
done
echo $m>>lop

for ((i=0;i<k;++i))
do
d=$(rchr ${c[i]})
if [ $d. -ne 255 ]
then
++p
fi
done

if [ $p -eq 0 ]
then
for ((i=0;i<k;++i))
do
c[i]=$(chr 33)
k=$k+1;
done
fi
f=$k-1
for ((i=$f;i>=0;i--))
do

if [ ${c[i]} == "$(chr 255)" ]
then
d=$(chr 33)
c[i]=$d
fi
if [ ${c[i]} < "$(chr 255)" ]
then
d=(rchr $i)
d=$d+1
ch[i]=$(chr $d)
fi
h=$((i-1))
if [ $i -gt 0 ] & [ ${c[$h]} == $(chr 255) ]
then
c[$h]=$(chr 33)
fi
done

done
