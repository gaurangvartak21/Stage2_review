echo "If 0 is the outcome it is heads"
echo "If 1 is the outcome it is tails"

heads=0
tails=0

for (( i=0; i<10; i++))
do
   randomtoss=$((RANDOM%2))

 echo "The result for the flip is : $randomtoss"

  if [[ $randomtoss == 0 ]]
  then
      let "heads= heads+1"   
  else
      
      let "tails= tails+1"
    fi

done
 
percent_H=$((heads*10))

echo "Percentage win of Heads is : $percent_H"

percent_T=$((tails*10))

echo "Percentage win of Tails is : $percent_T"

hh=0

ht=0

th=0

tt=0

for ((i=0; i<10; i++))

do

rt1=$((RANDOM%2))

echo "The result for the flip is : $rt1"

rt2=$((RANDOM%2))

echo "The result for the flip is : $rt2"


if [[ $((rt1)) == 0 && $((rt2)) == 0 ]]
  then
    let "hh= hh+1" 

elif [[ $((rt1)) == 0 && $((rt2)) == 1 ]]
  then
    let "ht= ht+1"
  
elif [[ $((rt1)) == 1 && $((rt2)) == 0 ]]
  then
    let "th= th+1"

elif [[ $((rt1)) == 1 && $((rt2)) == 1 ]]
  then
    let "tt= tt+1"

fi

phh=$((hh*10))
ptt=$((tt*10))
pth=$((th*10))
pht=$((ht*10))

done

echo "Percentage win of hh is : $phh"  
echo "Percentage win of tt is : $ptt"
echo "Percentage win of th is : $pth"  
echo "Percentage win of ht is : $pht"

hhh=0
hht=0
hth=0
thh=0
ttt=0
tht=0
tth=0
htt=0

for ((i=0; i<10; i++))

do

rt1=$((RANDOM%2))

echo "The result for the flip is : $rt1"

rt2=$((RANDOM%2))

echo "The result for the flip is : $rt2"

rt3=$((RANDOM%2))

echo "The result for the flip is : $rt3"

if [[ $((rt1)) == 0 && $((rt2)) == 0 && $((rt3)) == 0 ]]
  then
    let "hhh= hhh+1" 

elif [[ $((rt1)) == 0 && $((rt2)) == 0 && $((rt3)) == 1 ]]
  then
    let "hht= hht+1" 

elif [[ $((rt1)) == 0 && $((rt2)) == 1 && $((rt3)) == 0 ]]
  then
    let "hth= hth+1"

elif [[ $((rt1)) == 1 && $((rt2)) == 0 && $((rt3)) == 0 ]]
  then
    let "thh= thh+1"  
   
elif [[ $((rt1)) == 1 && $((rt2)) == 1 && $((rt3)) == 1 ]]
  then
    let "ttt= ttt+1" 

elif [[ $((rt1)) == 1 && $((rt2)) == 0 && $((rt3)) == 1 ]]
  then
    let "tht= tht+1"
 
elif [[ $((rt1)) == 1 && $((rt2)) == 1 && $((rt3)) == 0 ]]
  then
    let "tth= tth+1" 

elif [[ $((rt1)) == 0 && $((rt2)) == 1 && $((rt3)) == 1 ]]
  then
    let "htt= htt+1" 
   
fi
done

phhh=$((hhh*10))
phht=$((hht*10))
phth=$((hth*10))
pthh=$((thh*10))
pttt=$((ttt*10))
ptht=$((tht*10))
ptth=$((tth*10))
phtt=$((htt*10))

echo "Percentage win of hhh is : $phhh"  
echo "Percentage win of tth is : $ptth"
echo "Percentage win of thh is : $pthh"  
echo "Percentage win of hth is : $phth"
echo "Percentage win of hht is : $phht"  
echo "Percentage win of ttt is : $pttt"
echo "Percentage win of tht is : $ptht"  
echo "Percentage win of htt is : $phtt"










