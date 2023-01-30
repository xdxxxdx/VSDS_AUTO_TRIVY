

# Trivy scan required docker images and github with spicific commits tag
* Define docker image/github commits tag in the ```user.env```, ```trivyImage.sh``` and  ```trivyRepo.sh``` files 

* Run ``` docker-compose --env-file user.env pull --parallel``` to synchronize all the docker image with correct tag

* Run ```bash trivyImage.sh``` to scan all docker images

* Run ```bash trivyRepo.sh``` to scan all github repo with specific commit
