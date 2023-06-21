#trivy the docker images: Runtime parameters, please modify them accordingly
#No need to download the image to local 

#trivy the docker images
echo -e "\n\n############trivy scan ldes-server############\n\n";
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL  ldes/ldes-server:1.1.0-SNAPSHOT > ./DockerImage/ldes-server.output;
echo -e "\n\n############trivy scan ldi-workbench-nifi############\n\n";
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL  ldes/ldi-workbench-nifi:1.1.0-SNAPSHOT  >  ./DockerImage/ldi-workbench-nifi.output;
echo "############trivy scan ldi-orchestrator############" ;
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ldes/ldi-orchestrator:1.1.0-SNAPSHOT >  ./DockerImage/ldi-orchestrator.output;
