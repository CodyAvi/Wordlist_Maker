k=8
i=0
m=""
p=0

declare -a c
for((i=0;i<k;++i))
do
c[i]=$(chr 33)
done

while($k<16)
do
if($k==8)
then
for((i=0;i<k;++i))
do
$m+=${c[i]}
echo $m>>lop.txt
done
fi

for((i=0;i<k;++i))
do
d=$(chr 255)
if(${c[i]}!=$d)
then
++p
fi
done

if($p==0)
then
for((i=0;i<k;++i))
do
c[i]=$(chr 33)
++k
done
fi
m="";

for((i=(k-1);i>0;--i))
do
if(${c[i]}==$(chr 255))
then
d=$(chr 33)
c[i]=$d
fi
if(${c[i-1]}==$(chr 255) && i>0)
then
continue;
++c[i-1];
fi
else ++c[i]; break;
done

fi
done
