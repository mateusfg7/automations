#!/bin/bash

echo
echo "#> Create a volume for portainer"
echo " - docker volume create portainer_data"

echo
docker volume create portainer_data

echo
echo "#> Download and start portainer-ce"
echo " > Expose Ports: 8000, 9000"
echo " > Container name: portainer"
echo " > Restart: aways"
echo " > Volumes: /var/run/docker.sock:/var/run/docker.sock, portainer_data:/data"
echo " > Image: portainer/portainer-ce"
echo " - docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce"

echo
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

echo
echo "#> FINISH SCRPIT!"
