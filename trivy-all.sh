


#docker pull ghcr.io/informatievlaanderen/ldes-cli:20230116T1123
#docker pull ghcr.io/informatievlaanderen/json-data-generator:20230113T0736

#trivy the docker images
echo "############trivy scan ghcr.io/informatievlaanderen/ldes-server############"
trivy image --offline-scan --timeout 30m --security-checks vuln,secret,config --severity HIGH,CRITICAL  ghcr.io/informatievlaanderen/ldes-server:20230112t1553 > ldes-server.output;
echo "############trivy scan ghcr.io/informatievlaanderen/ldes-cli############"
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ghcr.io/informatievlaanderen/ldes-cli:20230116t1123 >ldes-cli.output;
echo "############trivy scan ghcr.io/informatievlaanderen/ldes-workbench-nifi############"
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ghcr.io/informatievlaanderen/ldes-workbench-nifi:20230116t113945 >ldes-workbench-nifi.output;
echo "############rivy scan ghcr.io/informatievlaanderen/json-data-generator############" 
trivy image --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ghcr.io/informatievlaanderen/json-data-generator:20230113t0736 > json-data-generator.output;

trivy the local repository
echo "############trivy scan ../VSDS-LDESClient4J############"
trivy fs --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ../VSDS-LDESClient4J > VSDS-LDESClient4J-local.output;
echo "############trivy scan ../VSDS-LDESConnectors############"
trivy fs --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ../VSDS-LDESConnectors > VSDS-LDESConnectors-local.output;
echo "############trivy scan ../VSDS-LDESServer4############"
trivy fs --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ../VSDS-LDESServer4J > VSDS-LDESServer4-local.output;
echo "############trivy scan ../VSDS-LDESWorkbench-NiFi############" 
trivy fs --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ../VSDS-LDESWorkbench-NiFi > VSDS-LDESWorkbench-NiFi-local.output;
echo "############trivy scan ../VSDS-LDESWorkbench-Services"############ 
trivy fs --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL ../VSDS-LDESWorkbench-Services > VSDS-LDESWorkbench-Services-local.output;
echo "############trivy scan ../VSDS-LDES-E2E-testin############" 
trivy fs --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL ../VSDS-LDES-E2E-testing > VSDS-LDES-E2E-testing-local.output;

#trivy the local repository
#echo "############trivy scan ../VSDS-LDESConnectors############"
#trivy repository --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL https://github.com/Informatievlaanderen/VSDS-LDESConnectors > VSDS-LDESConnectors-local.output;
#echo "############trivy scan ../VSDS-LDESServer4############"
#trivy repository --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL https://github.com/Informatievlaanderen/VSDS-LDESServer4J > VSDS-LDESServer4-local.output;
#echo "############trivy scan ../VSDS-LDESWorkbench-NiFi############" 
#trivy repository --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL https://github.com/Informatievlaanderen/VSDS-LDESWorkbench-NiFi > VSDS-LDESWorkbench-NiFi-local.output;
#echo "############trivy scan ../VSDS-LDESWorkbench-Services"############ 
#trivy repository --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL https://github.com/Informatievlaanderen/VSDS-LDESWorkbench-Services > VSDS-LDESWorkbench-Services-local.output;
#echo "############trivy scan ../VSDS-LDES-E2E-testin############" 
#trivy repository --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL https://github.com/Informatievlaanderen/VSDS-LDES-E2E-testing > VSDS-LDES-E2E-testing-local.output;