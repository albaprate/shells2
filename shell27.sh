
#ls $1
#find $1 -name "*.txt" -type f -print  -delete | echo "se han borrado $(wc -l) ficheros"


if [ -d $1 ]; then
echo "si existe el directorio"
count=0


for files in `find $1 -name "*.txt" -type f`
  do
    find $1 -name "*.txt" -type f  -delete


count=$((count +1 ))
done
echo "se han borrado $count ficheros"

else 
echo "no existe el directorio"
fi


# -f comprueba que el archivo existe 
#wc -l cuenta los archivos borrados(filas)

#propuesta profesor 

ip="10.1.97."
contador=0

echo "listado de IPs:"
for i in `seq 2 254`; do
    correctos=`ping -c 1 $ip$si | grep received | awk '{print $4}'`
    if [ $correctos -gt 0 ]; then
 echo $ip$i
fi 
done