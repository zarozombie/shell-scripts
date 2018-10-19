#########################################
#### This Log File Tracks Temp ##########
#########################################

############## Assign Variables ########
log='./log.txt'
dateTime=`date +%m"-"%d"-"%Y"_"%T`
line="----------------------------------------"
temp=""
site="https://w1.weather.gov/xml/current_obs/KDTW.xml"

############ Create/ Appen Log ###############
temp=$(curl ${site}| grep temp_f)
temp=$(echo ${temp} | cut -b 9-12)
echo ${line}
echo ${dateTime}
echo "This is current Weather for Detroit"
echo ${temp}
