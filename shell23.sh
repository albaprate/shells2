
maxlineas=`cat precipitaciones.txt | wc -l`
linea=1
while [ $linea -le $maxlineas ]; do
col1=$(cat precipitaciones.txt | head -${linea} | tail -1 |awk '{print $1}')
col2=$(cat precipitaciones.txt | head -${linea} | tail -1 |awk '{print $2}')

  if [ $col2 -eq 0 ]; then
  echo $col1
  #echo $col2   

  # fi
#linea=$(($linea + 1));
#done
 secuencia=0
     continuar=true
       while [ $continuar ]; do
          for i in lunes martes miercoles jueves viernes sabado domingo; do

	     secuencia=$((secuencia + 1))
	        if [ $col1 = $secuencia ]
	 then 
	    echo "dia se la semana es : $i"
	   exit
	fi
         done
         continuar=false
     done
fi
linea=$(($linea + 1));
done  

#propuesta del profesor

dia="lunes"

for i in $(cat precipitaciones.txt | awk '{print $2}'); do

    if [$i -eq 0 ]; then
	echo "El $dia no llovio"
	fi
if [ $dia == "lunes" ]; then dia="martes";
else if [ $dia == "martes" ]; then dia="miercoles";
else if [ $dia == "miercoles" ]; then dia="jueves";
else if [ $dia == "jueves" ]; then dia="viernes";
else if [ $dia == "viernes" ]; then dia="sabado";
else if [ $dia == "sabado" ]; then dia="domingo";
else if [ $dia == "domingo" ]; then dia="lunes"; fi; fi; fi; fi; fi; fi
fi 
done


