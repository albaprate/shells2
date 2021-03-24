
#ls $1
#find $1 -name "*.txt" -type f -print  -delete | echo "se han borrado $(wc -l) ficheros"

count=0
for files in `find $1 -name "*.txt" -type f`
  do
    find $1 -name "*.txt" -type f  -delete

count=$((count +1 ))
done
echo "se han borrado $count ficheros"

# -f comprueba que el archivo existe 
#wc -l cuenta los archivos borrados(filas)

#propuesta profesor
ruta_anterior=`pwd`
ruta_buena=$ruta_anterior/$1
cd $1
ruta_actual=`pwd`

contador=0
if [ $ruta_buena = $ruta_actual ]; then
    for i in `ls -l | grep.txt`; do
	rm $i
	contador=`expr $contador + 1`
	done
echo "se han borrado $contador ficheros"
else
echo "El directorio no existe"
fi
