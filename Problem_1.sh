read -p "Enter a value of a" a
read -p "Enter a value of b" b
read -p "Enter a value of c" c

echo "results are"

Compute_A=$((a+b*c))

echo $Compute_A 

Compute_B=$((a*b+c))

echo $Compute_B

Compute_C=$((c+a/b))

echo $Compute_C

Compute_D=$((a%b+c))

echo $Compute_D

declare -A Operations

operations[$Compute_A]="$Compute_A"

operations[$Compute_B]="$Compute_B"

operations[$Compute_C]="$Compute_C"

operations[$Compute_D]="$Compute_D"


echo "Results are : ${operations[@]}"

Answer=${operations[@]}

echo "descending order results are"

for desc in $(echo "$Answer"| tr ' ' '\n' |sort -r)
do
  echo $desc
done

echo "ascending order results are"

for asc in $(echo "$Answer"| tr ' ' '\n' | sort -n)
do
  echo $asc
done
  












