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
echo "############trivy scan ../VSDS-LDES-E2E-testin############" 
trivy fs --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL -o ./LocalRepo/VSDS-LDES-E2E-testing-local.output  ../VSDS-LDES-E2E-testing;
