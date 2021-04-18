#!/bin/bash
echo -e "\e[34m Creating Script.....\e[0m"
rm -f lop
k=8
m=""
p=0
a=0
i=10
nc=0
mkdir $HOME/Wordlist/wsession

cd

sl()
{
for ((i=k;i>=0;i--))
do
unset d
unset l
l=$((i+1))
l=$((l*-1))
d=$(lw:($l))
c[i]="$d"
done
}

nl()
{
for ((i=0;i<k;++i ))
do
unset d
d=$(chr 33)
c[i]="$d"
done
}

if [[ -f $HOME/Wordlist/wsession/lword ]]
then
unset lw
unset l
unset nc
nc=1
lw="$(cat $HOME/Wordlist/wsession/lword)"
sl
else
nl
fi

while [ $k -lt 16 ]
do
unset m
m=""
for ((i=0;i<k;++i))
do
m=$m"${c[i]}"
done
echo "$m">>lop
echo "$m">$HOME/Wordlist/wsession/lword

for ((i=0;i<k;++i))
do
unset d
d=$(rchr "${c[i]}")
if [ $d -ne 126 ]
then
((p++))
break
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
