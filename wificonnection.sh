#!/bin/bash

ssid=$(/usr/bin/nm-tool | grep "Device: wlan0" | /usr/bin/awk '{print $4}')

if [ $ssid = "[KYKWIFI]" ]
then
/usr/bin/curl --data "j_username=$KYK_ID&j_password=$KYK_PASS" https://wifi.kyk.gov.tr/j_spring_security_check 

if [ $ssid = "[KTU-Portal]" ]
then
/usr/bin/curl --data "auth_user=$KTU_ID&auth_pass=$KTU_PASS" https://capitiveportal.ktu.edu.tr:8003/


fi
