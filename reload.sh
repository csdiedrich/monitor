#!/bin/bash
ps -ef|grep nagios|grep opt|awk '{print $2}'|xargs kill -9
