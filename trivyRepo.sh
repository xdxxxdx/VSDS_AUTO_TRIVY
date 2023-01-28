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


