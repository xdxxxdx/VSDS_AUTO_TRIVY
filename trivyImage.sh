
#trivy the docker images: Runtime parameters, please modify them accordingly

LDES_WORKBENCH_NIFI_TAG=20230116t113945
LDES_SERVER_TAG=20230112t1553
LDES_CLIENT_CLI_TAG=20230116t1123

JSON_DATA_GENERATOR_TAG=20230113t0736
LDES_SERVER_SIMULATOR_TAG=20230113t0736
LDES_CLIENT_SINK_TAG=20230113t0736

GTFS2LDES_TAG=20220928t1555
MONGODB_TAG=6.0.3



#trivy the docker images
echo "############trivy scan ghcr.io/informatievlaanderen/ldes-server############"
trivy image --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/ldes-server:${LDES_SERVER_TAG:-20230112t1553}> ./DockerImage/ldes-server.output;
echo "############trivy scan ghcr.io/informatievlaanderen/ldes-cli, VSDS-LDESWorkbench-Services ############"
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/ldes-cli:${LDES_CLIENT_CLI_TAG:-20230116t1123} >  ./DockerImage/ldes-cli-VSDS-LDESWorkbench-Services.output;
echo "############trivy scan ghcr.io/informatievlaanderen/ldes-workbench-nifi############"
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL  ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/ldes-workbench-nifi:${LDES_WORKBENCH_NIFI_TAG:-20230116t113945} >  ./DockerImage/ldes-workbench-nifi.output;
echo "############rivy scan ghcr.io/informatievlaanderen/json-data-generator############" 
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/json-data-generator:${JSON_DATA_GENERATOR_TAG:-20230113t0736} >  ./DockerImage/json-data-generator.output;