


#docker pull ghcr.io/informatievlaanderen/ldes-cli:20230116T1123
#docker pull ghcr.io/informatievlaanderen/json-data-generator:20230113T0736

#trivy the docker images
echo "############trivy scan ghcr.io/informatievlaanderen/ldes-server############"
trivy image --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/ldes-server:${LDES_SERVER_TAG:-20230112t1553}> ./DockerImage/ldes-server.output;
echo "############trivy scan ghcr.io/informatievlaanderen/ldes-cli, VSDS-LDESWorkbench-Services ############"
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/ldes-cli:${LDES_CLIENT_CLI_TAG:-20230116t1123} >  ./DockerImage/ldes-cli-VSDS-LDESWorkbench-Services.output;
echo "############trivy scan ghcr.io/informatievlaanderen/ldes-workbench-nifi############"
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL  ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/ldes-workbench-nifi:${LDES_WORKBENCH_NIFI_TAG:-20230116t113945} >  ./DockerImage/ldes-workbench-nifi.output;
echo "############rivy scan ghcr.io/informatievlaanderen/json-data-generator############" 
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ${DOCKER_REPO:-ghcr.io/informatievlaanderen}/json-data-generator:${JSON_DATA_GENERATOR_TAG:-20230113t0736} >  ./DockerImage/json-data-generator.output;

#trivy the local repository#
echo "############trivy scan ../VSDS-LDESClient4J############"
trivy fs --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL -o ./LocalRepo/VSDS-LDESClient4J-local.output ../VSDS-LDESClient4J;
echo "############trivy scan ../VSDS-LDESConnectors############"
trivy fs --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL -o ./LocalRepo/VSDS-LDESConnectors-local.output ../VSDS-LDESConnectors;
echo "############trivy scan ../VSDS-LDESServer4############"
trivy fs --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL -o ./LocalRepo/VSDS-LDESServer4-local.output ../VSDS-LDESServer4J;
echo "############trivy scan ../VSDS-LDESWorkbench-NiFi############" 
trivy fs --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL -o ./LocalRepo/VSDS-LDESWorkbench-NiFi-local.output ../VSDS-LDESWorkbench-NiFi;
echo "############trivy scan ../VSDS-LDESWorkbench-Services"############ 
trivy fs --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL -o ./LocalRepo/VSDS-LDESWorkbench-Services-local.output ../VSDS-LDESWorkbench-Services; 
echo "############trivy scan ../VSDS-LDES-E2E-testing############" 
trivy fs --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL -o ./LocalRepo/VSDS-LDES-E2E-testing-local.output  ../VSDS-LDES-E2E-testing;


trivy the github repository
echo "############trivy scan ../VSDS-LDESConnectors############"
trivy repository --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL https://github.com/Informatievlaanderen/VSDS-LDESConnectors > VSDS-LDESConnectors-local.output;
echo "############trivy scan ../VSDS-LDESServer4############"
trivy repository --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL https://github.com/Informatievlaanderen/VSDS-LDESServer4J > VSDS-LDESServer4-local.output;
echo "############trivy scan ../VSDS-LDESWorkbench-NiFi############" 
trivy repository --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL https://github.com/Informatievlaanderen/VSDS-LDESWorkbench-NiFi > VSDS-LDESWorkbench-NiFi-local.output;
echo "############trivy scan ../VSDS-LDESWorkbench-Services"############ 
trivy repository --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL https://github.com/Informatievlaanderen/VSDS-LDESWorkbench-Services > VSDS-LDESWorkbench-Services-local.output;
echo "############trivy scan ../VSDS-LDES-E2E-testin############" 
trivy repository --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL https://github.com/Informatievlaanderen/VSDS-LDES-E2E-testing > VSDS-LDES-E2E-testing-local.output;

#trivy the github repository with a specific commit
#export BASH_ENV=user.env
#export GITHUB_TOKEN=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;
echo "############trivy scan ../VSDS-LDESConnectors############"
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDESConnectors:-4996d3b82eb2a241154bbf7547f4cfe04f114af0} -o ./RRepoCom/VSDS-LDESConnectors.output  https://github.com/Informatievlaanderen/VSDS-LDESConnectors;
echo "############trivy scan ../VSDS-LDESServer4############"
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDESServer4J:-4996d3b82eb2a241154bbf7547f4cfe04f114af0} -o ./RRepoCom/VSDS-LDESServer4J.output  https://github.com/Informatievlaanderen/VSDS-LDESServer4J;
echo "############trivy scan ../VSDS-LDESWorkbench-NiFi############" 
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDESWorkbench_NiFi:-4996d3b82eb2a241154bbf7547f4cfe04f114af0} -o ./RRepoCom//VSDS-LDESWorkbench-NiFi.output  https://github.com/Informatievlaanderen//VSDS-LDESWorkbench-NiFi;
echo "############trivy scan ../VSDS-LDESWorkbench-Services############"
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDESWorkbench_Services:-4996d3b82eb2a241154bbf7547f4cfe04f114af0} -o ./RRepoCom/VSDS-LDESWorkbench-Services.output  https://github.com/Informatievlaanderen/VSDS-LDESWorkbench-Services;
echo "############trivy scan ../VSDS-LDES-E2E-testin############" 
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDES_E2E_testing:-f5a60040b20d277b1b239b25d2052773c298bed3} -o ./RRepoCom/VSDS-LDES-E2E-testing.output  https://github.com/Informatievlaanderen/VSDS-LDES-E2E-testing;'


