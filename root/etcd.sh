#!/bin/sh

#set variables
myip=10.0.1.$2
num=$3
dns=10.0.1.1
gateway=10.0.1.1
etcdip1=10.0.1.40
etcdip2=10.0.1.41
etcdip3=10.0.1.42

sed -e "s/\${myip}/$myip/g" \
    -e "s/\${dns}/$dns/g" \
    -e "s/\${etcdip1}/$etcdip1/g" \
    -e "s/\${etcdip2}/$etcdip2/g" \
    -e "s/\${etcdip3}/$etcdip3/g" \
    -e "s/\${gateway}/$gateway/g" \
    -e "s/\${num}/$num/g" \
    $1
