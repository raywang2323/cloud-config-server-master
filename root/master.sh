#!/bin/sh

#set variables
myip="10.0.2.$2"
num=$2
dns="10.0.2.1"
gateway="10.0.2.1"
etcdip1="10.0.2.6"
etcdip2="10.0.2.7"
etcdip3="10.0.2.8"

sed -e "s/\${myip}/$myip/g" \
	  -e "s/\${dns}/$dns/g" \
	  -e "s/\${num}/$num/g" \
		-e "s/\${etcdip1}/$etcdip1/g" \
		-e "s/\${etcdip2}/$etcdip2/g" \
		-e "s/\${etcdip3}/$etcdip3/g" \
		-e "s/\${gateway}/$gateway/g" \
		$1
