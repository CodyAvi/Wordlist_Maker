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
for ((i=0;i<255;++i))
do
n=$m${c[i]}
echo $n>>lop.txt
done

for ((i=0;i<k;++i))
do
d=$(chr 255)
if [ ${c[i]} != "$d" ]
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
m="";

for ((i=(k-1);i>0;--i))
do
if [ ${c[i]} == "$(chr 255)" ]
then
d=$(chr 33)
c[i]=$d
fi
if [ ${c[i-1]} == "$(chr 255)" & $i -gt 0 ]
then
continue;
++${c[i-1]};
else ++${c[i]}; break;
fi
done

done
