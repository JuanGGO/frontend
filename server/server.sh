#!/bin/bash


#To run the container write the comand docker run -i -p 8080:4040 -td fluter_web_docker_example
echo 'Server start script initilizing...'

PORT=4040

echo 'Cleaning port' $PORT '...'
fuser -k 4040/tcp

# Change directories to the release folder
cd build/web/

# Start the server
echo 'Starting server on port ' $PORT '...'
python3 -m http.server $PORT

#Exit
echo 'Server exited'