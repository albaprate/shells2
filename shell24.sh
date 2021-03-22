numimpar=0
numpar=0

for i in $(cat numeros.txt); do 

let resto=$i%2
if [ $resto -eq 1 ]; then
echo "impares" $i
((numimpar=$numimpar + 1));

else
echo "pares" $i
((numpar=$numpar + 1));

fi
done

echo "hay $numimpar numeros impares"
echo "hay $numpar numeros pares"