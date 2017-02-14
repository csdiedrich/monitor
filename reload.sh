#!/bin/bash
ps -ef|grep nagios|awk "{print $2}"|xargs kill -9
