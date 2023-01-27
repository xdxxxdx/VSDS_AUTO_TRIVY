#trivy the docker images
echo "############trivy scan ghcr.io/informatievlaanderen/ldes-server############"
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/ldes-serveri:${JSON_DATA_GENERATOR_TAG:-20230112t1553}> ldes-server.output;
echo "############trivy scan ghcr.io/informatievlaanderen/ldes-cli, VSDS-LDESWorkbench-Services ############"
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/ldes-cli:${JSON_DATA_GENERATOR_TAG:-20230116t1123} >ldes-cli-VSDS-LDESWorkbench-Services.output;
echo "############trivy scan ghcr.io/informatievlaanderen/ldes-workbench-nifi############"
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL  ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/ldes-workbench-nifi:${LDES_WORKBENCH_NIFI_TAG:-20230116t113945} >ldes-workbench-nifi.output;
echo "############rivy scan ghcr.io/informatievlaanderen/json-data-generator############" 
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/json-data-generator:${JSON_DATA_GENERATOR_TAG:-20230113t0736} > json-data-generator.output;
