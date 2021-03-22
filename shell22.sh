suma=0
media=0
contador=0

for i in $(cat precipitaciones.txt | awk '{print $2}'); do

((suma=$suma + $i));
((contador=$contador + 1));

done
media=$(echo "scale=2; $suma/$contador" | bc -l)
echo "La media de precipitaciones es" $media


