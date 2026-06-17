#!/bin/sh




if [ "$1" = "start" ]; then

start-stop-daemon --start --background --pidfile /var/run/aesdsocket.pid --make-pidfile --exec ./aesdsocket -- -d

elif [ "$1" = "stop" ]; then

start-stop-daemon --stop --signal TERM --pidfile /var/run/aesdsocket.pid --remove-pidfile

fi
