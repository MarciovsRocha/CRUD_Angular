#!/bin/bash

getdate(){
	echo "$(date +%Y%m%d)"
}
logname=getDate".log"
echo "Starting backend server..."
./start_backend.sh &> "logs/backend/$logname" &
echo "PID of backend: $(sed -n '/\.\/start_backend.sh*/p' <<< "$(ps -aux)" | tr -s ' ' | cut -d ' ' -f 2)"
echo "Starting frontend server..."
./start_frontend.sh &> "logs/frontend/$logname" &
echo "PID of frontend: $(sed -n '/\.\/start_*/p' <<< "$(ps -aux)" | tr -s ' ' | cut -d ' ' -f 2)"


