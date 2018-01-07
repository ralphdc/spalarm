#!/bin/bash

basepath=$(cd `dirname $0`; pwd)

source "$basepath/main.sh"

function  check_suse()
{
	check_suse_version=$(cat /etc/issue | grep "SUSE Linux Enterprise Server 12 SP2  (x86_64)" | wc -l)
	if [ $check_suse_version -ne 1 ];then
		send_error "This Linux distribution must be SUSE Linux Enterprise Server 12 SP2  (x86_64)"
	fi
}

function check_shell_path()
{
	if [  ! -d /sunlight/shell ];then
		mkdir -p /sunlight/shell
		chmod 700 /sunlight/shell
	fi
	send_info "check directory /sunlight/shell..."
}

function check_alarm_data_path()
{
	if [  ! -d /home/spalarm ];then
		mkdir -p /home/spalarm
		chmod 700 /home/spalarm
	fi
	send_info "check directory /home/spalarm..."
}

function check_bin_path()
{
	if [  ! -d /root/bin ];then
		mkdir /root/bin
		chmod 755 /home/spalarm
	fi
	send_info "check directory /root/bin..."
}


check_suse
check_shell_path
check_alarm_data_path
check_bin_path

