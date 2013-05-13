#!/system/bin/sh

	cat /dev/input/event1 > /dev/keycheck&
	sleep 3
	kill -9 $!

	if [ -s /dev/keycheck ]
	then
	/system/bin/say_rcv_init

	fi
	exit
