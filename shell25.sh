maxlineas=`cat listado.txt | wc -l`
linea=1
linux=0
windows=0
prowin=0
prolin=0
while [ $linea -le $maxlineas ]; do
sistemas=$(cat listado.txt | head -${linea} | tail -1 | awk '{print$2}') 
procesos=$(cat listado.txt | head -${linea} | tail -1 | awk '{print$3}') 

#propuesta recoger datos profesor
#linea=`cat listado.txt | head -${contador} | tail -1`
#sistemas=`echo $linea | awk '{print $2}'`
#procesos=`echo $linea | awk '{print $3}'`

if [ $sistemas = "Windows" ]; then
 windows=$(($windows + 1));
 prowin=$(($prowin + $procesos));

else 
 linux=$(($linux + 1));
 prolin=$(($prolin + $procesos));
fi

linea=$(($linea + 1));

done
echo " Linux -> $linux $prolin"
echo " Windows -> $windows $prowin"

