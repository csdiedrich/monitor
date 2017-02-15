#!/bin/bash
sed -i 's/cfg_file=\/opt\/nagios\/etc\/objects\/localhost.cfg/#cfg_file=\/opt\/nagios\/etc\/objects\/localhost.cfg/g' /opt/nagios/etc/nagios.cfg
ps -ef|grep nagios|grep opt|awk '{print $2}'|xargs kill -9
