echo "If 0 is the outcome it is heads"
echo "If 1 is the outcome it is tails"

heads=0
tails=0

for (( i=0; i<42; i++))
do
  randomtoss=$((RANDOM%2))

  echo "The result for the flip is : $randomtoss"
  
  if [[ $randomtoss == 0 ]]    
  then
      let "heads= heads+1"
  else
      let "tails= tails+1"
  fi

  if [[ $heads == 21 ]]
  then
      echo "Heads has won 21 times"
      break
  
  elif [[ $tails == 21 ]]
  then
      echo "tails has won 21 times"
      break
  
   fi

done

 if [[ $heads == $tails ]]
 then
     echo "it is a tie"
 fi

for (($(($heads)) >= 21 && $(($tails)) >= 21))

do
  randomtoss=$((RANDOM%2))

  echo "The result for the flip is : $randomtoss"
  
  if [[ $randomtoss == 0 ]]    
  then
      let "heads= heads+1"
  else
      let "tails= tails+1"
  fi

  if [[$(($heads - $tails)) == 2]]

  then
      
echo "Heads has won"
  elif [[$(($tails - $heads)) == 2]]
  then 
      echo "Tails has won"
   fi
done

  