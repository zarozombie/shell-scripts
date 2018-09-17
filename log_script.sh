#########################################
#### This Log File Tracks Temp ##########
#########################################

############## Assign Variables ########
log='./log.txt'
dateTime=`date +%m"-"%d"-"%Y"_"%T`
line="----------------------------------------"
temp=""
site="https://w1.weather.gov/xml/current_obs/KDTW.xml"

#detroit sunset
site2="https://api.sunrise-sunset.org/json?lat=42.416822&lng=-83.2465677"

############ Create/ Appen Log ###############
echo ${line}>>${log}
echo ${dateTime}>>${log}
echo "this is a test log file">>${log}
temp=$(curl ${site}| grep temp_f)
temp=$(echo ${temp} | cut -b 9-12)
echo ${temp}>>${log}

tail ./log.txt
#cat ./log.txt
