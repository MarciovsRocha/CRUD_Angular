#!/bin/bash 

kill -9 "$(sed -n '/frontend/p'  <<< "$(ps -aux)" | tr -s ' ' | cut -d ' ' -f 2)"
kill -9 "$(sed -n '/backend/p'   <<< "$(ps -aux)" | tr -s ' ' | cut -d ' ' -f 2)"
kill -9 "$(sed -n '/storage/p'   <<< "$(ps -aux)" | tr -s ' ' | cut -d ' ' -f 2)"
kill -9 "$(sed -n '/npm start/p' <<< "$(ps -aux)" | tr -s ' ' | cut -d ' ' -f 2)"
kill -9 "$(sed -n '/ng serve/p'  <<< "$(ps -aux)" | tr -s ' ' | cut -d ' ' -f 2)"

