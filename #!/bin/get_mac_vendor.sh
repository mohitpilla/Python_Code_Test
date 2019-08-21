#!/bin/sh
# script developped to check the mac provider 

interface=`ifconfig | grep BROADCAST | awk {'print $1'} | cut -d':' -f1`

mac_address=$1


mac_provider_prefix=`echo $mac_address| cut -d':' -f1,2,3`

mac_vendor_name=`grep ${mac_provider_prefix} mac_Vendor.txt | awk {'print $5,$6,$7,$8,$9,$10'}`

echo Mac_vendor_prefix is $mac_provider_prefix for the interface $interface and Mac_vendor_name is $mac_vendor_name
