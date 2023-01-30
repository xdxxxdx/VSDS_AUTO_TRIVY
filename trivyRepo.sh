#trivy the github repository with a specific commit:Runtime parameters, please modify them accordingly
VSDS_LDESConnectors=5886a1461f2565cee0e2bda8ef8650129ba32da8
VSDS_LDES_E2E_testing=9c3c01ca4e1e8ecb97343e70892b70474f5ec549
VSDS_LDESServer4J=0fc4b2073bbc1abc26ec025a4beb2eca80fdf36c
VSDS_LDESWorkbench_NiFi=efe3ecbe736bd6d787845bbcb71f857447eb2dd5
VSDS_LDESWorkbench_Services=2891957dad109793d91525bdcf60dd73c842bd7f
export GITHUB_TOKEN=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;




#trivy the github repository with a specific commit
echo -e "\n\n############trivy scan ../VSDS-LDESConnectors############\n\n"
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDESConnectors:-4996d3b82eb2a241154bbf7547f4cfe04f114af0} -o ./RRepoCom/VSDS-LDESConnectors.output  https://github.com/Informatievlaanderen/VSDS-LDESConnectors;
echo -e "\n\n############trivy scan ../VSDS-LDESServer4############\n\n"
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDESServer4J:-4996d3b82eb2a241154bbf7547f4cfe04f114af0} -o ./RRepoCom/VSDS-LDESServer4J.output  https://github.com/Informatievlaanderen/VSDS-LDESServer4J;
echo -e "\n\n############trivy scan ../VSDS-LDESWorkbench-NiFi############\n\n" 
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDESWorkbench_NiFi:-4996d3b82eb2a241154bbf7547f4cfe04f114af0} -o ./RRepoCom//VSDS-LDESWorkbench-NiFi.output  https://github.com/Informatievlaanderen//VSDS-LDESWorkbench-NiFi;
echo -e "\n\n############trivy scan ../VSDS-LDESWorkbench-Services############\n\n"
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDESWorkbench_Services:-4996d3b82eb2a241154bbf7547f4cfe04f114af0} -o ./RRepoCom/VSDS-LDESWorkbench-Services.output  https://github.com/Informatievlaanderen/VSDS-LDESWorkbench-Services;
echo -e "\n\n############trivy scan ../VSDS-LDES-E2E-testing############\n\n" 
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDES_E2E_testing:-f5a60040b2052773c298bed3} -o ./RRepoCom/VSDS-LDES-E2E-testing.output  https://github.com/Informatievlaanderen/VSDS-LDES-E2E-testing;


