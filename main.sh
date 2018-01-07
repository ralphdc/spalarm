#!/bin/bash

#sunlight sp monitor system 
#created on 2018/01/07
#by chao.dong
#used by sp servers consist of 1 manage server and 3 application servers



function get_current_time_stamp()
{
	echo `date "+%Y/%m/%d %H:%M:%S"`
}

function send_error()
{
	echo -e "\e[1;45m [ Error ] `get_current_time_stamp` -  $1  -\e[0m"
}

function send_success()
{
	echo -e "\e[1;32m [ Success ] `get_current_time_stamp` -  $1  -\e[0m"
}

function send_info()
{
	echo -e "\e[1;34m [ Info ] `get_current_time_stamp` -  $1  -\e[0m"
}

function send_warn()
{
	echo -e "\e[1;33m [ Warn ] `get_current_time_stamp` -  $1  -\e[0m"
}



function get_server_cpu_core()
{

}

function get_memory_usage()
{

}

function get_cpu_usage()
{
	
}

