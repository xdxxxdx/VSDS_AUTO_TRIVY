

# Scan docker images

* Define docker tag in the ```user.env```, also ```bash``` files 

* Run ``` docker-compose --env-file user.env pull --parallel``` to synchronize all the docker image with correct tag

* Run ```bash trivyImage.sh``` to scan all docker images

* Run ```bash trivyRepo.sh``` to scan all github repo with specific commit
