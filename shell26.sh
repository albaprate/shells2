
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
