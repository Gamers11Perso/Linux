#!/bin/bash
#defined as vcgencmd

myls() {

#clock speed
    clock_raw=$(sudo cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq)
    clock_out_MHz=$(($clock_raw / 1000))
    clock_out_GHz=$(bc -l <<< "scale=2;$clock_raw/1000000")

#temp
    temp_raw=$(sudo cat /sys/class/thermal/thermal_zone2/temp)
    temp_out_C=$(($temp_raw / 1000))

#printing it
    if [ 1 -eq "$(echo "${clock_out_MHz} < 1000" | bc)" ]
    then
        echo "$clock_out_MHz MHz or 0$clock_out_GHz GHz @$temp_out_C°C"
    else
        echo "$clock_out_MHz MHz or $clock_out_GHz GHz @$temp_out_C°C"
    fi
}

#colors table

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

#putting it in a table
    echo "============================================="
    echo "=                                           ="
    echo "=                                           ="
    echo "=                                           ="
    echo "============================================="

#runs it
myls
