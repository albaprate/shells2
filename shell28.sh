
#nmap -sP 192.168.1.*


for ip in $(seq 1 254); do
ping -c 1 192.168.1.$ip;
done

#for ip in 192.168.{1..254}; do
   # ping -c 1 $ip


#echo $ip
#done

#for((i = 1; i <= 255; i++)); do
    #Test-Connection "192.168.173.$i" -Count 1 -ErrorAction SilentlyContinue
    #echo "192.168.173.$i"
#done