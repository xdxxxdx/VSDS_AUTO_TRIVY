#trivy the docker images: Runtime parameters, please modify them accordingly
#No need to download the image to local 


LDI_WORKBENCH_NIFI_TAG=20230407T130526
LDI_ORCHESTRATOR_TAG=20230407T130529
LDES_SERVER_TAG=20230407T1308

#trivy the docker images
echo -e "\n\n############trivy scan ghcr.io/informatievlaanderen/ldes-server############\n\n";
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/ldes-server:${LDES_SERVER_TAG:-20230407T1308}> ./DockerImage/ldes-server.output;
echo -e "\n\n############trivy scan ghcr.io/informatievlaanderen/ldi-workbench-nifi############\n\n";
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL  ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/ldi-workbench-nifi:${LDI_WORKBENCH_NIFI_TAG:-20230407T130526} >  ./DockerImage/ldi-workbench-nifi.output;
echo "############trivy scan ghcr.io/informatievlaanderen/ldi-orchestrator############" ;
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/ldi-orchestrator:${LDI_ORCHESTRATOR_TAG:-20230407T130529} >  ./DockerImage/ldi-orchestrator.output;
