## unzip Linux version Meshroom
tar -xf Meshroom-2023.2.0-linux.tar.gz

## install WebODM with Docker
git clone https://github.com/OpenDroneMap/WebODM --config core.autocrlf=input --depth 1

cd WebODM

./webodm.sh start 

