#! /bin/bash

source config

echo '0 7 * * * curl -s -X POST -H "Content-Type: application/json" -d '\'{'"'username'"': '"'${location}'"', '"'content'"': '"'I work! :D'"'}\'' "'$discordUrl'"' > ./cronfile
echo '0 2 * * * /opt/IndoorClimatePi/update.sh' >> ./cronfile