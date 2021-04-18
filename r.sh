#!/bin/bash
clear
rm -f $HOME/Wordlist/lop
k=8
m=""
p=0
a=0
i=10
nc=0

cd

sl()
{

for ((i=0;i<k;i++))
do
unset d
unset ll
ll="${lw:$i:1}"
d="$ll"
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

if [[ -f $HOME/Wordlist/wsession ]]
then
echo ""
else
mkdir $HOME/Wordlist/wsession
fi
clear
if [[ -f $HOME/Wordlist/wsession/lword ]]
then
unset lw
unset l
unset nc
nc=1
lw="$(cat $HOME/Wordlist/wsession/lword)"
echo -ne "\e[1;33m Continuing Last Session\e[1;32m ✓ \e[0m"
sl
else
nl
fi

echo -e "\e[1;31m Press [Ctrl+C] to Exit the Script\e[0m"

while [ $k -lt 18 ]
do

echo -ne "\e[1;34m Creating Wordlist (/) \e[0m"'\r'
unset m
m=""
for ((i=0;i<k;++i))
do
m=$m"${c[i]}"
done
echo "$m">>$HOME/Wordlist/lop
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

echo -ne "\e[1;34m Creating Wordlist (-) \e[0m"'\r'

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

echo -ne "\e[1;34m Creating Wordlist (\) \e[0m"'\r'

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

echo -ne "\e[1;34m Creating Wordlist (|) \e[0m"'\r'

done
echo -ne "\e[1;32m Wordlist created [✓] and saved in $HOME/Wordlist/lop\e[0m"
