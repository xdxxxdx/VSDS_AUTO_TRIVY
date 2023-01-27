

# Scan docker images

* Define docker tag in the ```user.env``` file 

* Run ``` docker-compose --env-file user.env pull --parallel``` to synchronize all the docker image with correct tag

* Run ```bash trivy.sh``` to scan all docker images

#TODO
Write a way to auto checkout github with given commmits
