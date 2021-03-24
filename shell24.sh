numimpar=0
numpar=0

for i in $(cat numeros.txt); do 

let resto=$i%2
if [ $resto -eq 1 ]; then
echo "impares" $i
# echo $i >> pares 
((numimpar=$numimpar + 1));

else
echo "pares" $i
#echo $i >> impares
((numpar=$numpar + 1));

fi
done

echo "hay $numimpar numeros impares"
echo "hay $numpar numeros pares"
#echo "total $pares pares:"

#ejercicio corregido