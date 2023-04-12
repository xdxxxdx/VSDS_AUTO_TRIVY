#trivy the github repository with a specific commit:Runtime parameters, please modify them accordingly
VSDS_LDESConnectors=349994da49790dee8e96b41d73a756bec849bae1
VSDS_LDES_E2E_testing=cd8dc359d133273cb6c1cf5f64f5bb979856f2cd
VSDS_LDESServer4J=cd33f3ee30926ad47d0ab45e6e8f35b9f3024c03
VSDS_LDESWorkbench_NiFi=3e78bf003409cf40247b9ab8944a52dd9742c675
VSDS_LDESWorkbench_Services=15b29f32c1fefca0575d7a100129a64aafba9ab5
export GITHUB_TOKEN=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;
#trivy the github repository with a specific commit
echo -e "\n\n############trivy scan ../VSDS-LDESConnectors############\n\n";
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDESConnectors:-4996d3b82eb2a241154bbf7547f4cfe04f114af0} -o ./RRepoCom/VSDS-LDESConnectors.output  https://github.com/Informatievlaanderen/VSDS-LDESConnectors;
echo -e "\n\n############trivy scan ../VSDS-LDESServer4############\n\n";
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDESServer4J:-b108f3b3a2d415f6944e24c2be86c023ba2f5a12} -o ./RRepoCom/VSDS-LDESServer4J.output  https://github.com/Informatievlaanderen/VSDS-LDESServer4J;
echo -e "\n\n############trivy scan ../VSDS-LDESWorkbench-NiFi############\n\n"; 
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDESWorkbench_NiFi:-4996d3b82eb2a241154bbf7547f4cfe04f114af0} -o ./RRepoCom//VSDS-LDESWorkbench-NiFi.output  https://github.com/Informatievlaanderen//VSDS-LDESWorkbench-NiFi;
echo -e "\n\n############trivy scan ../VSDS-LDESWorkbench-Services############\n\n";
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDESWorkbench_Services:-bb7656a0283b635529389e5077ee5918d1f9d0cb} -o ./RRepoCom/VSDS-LDESWorkbench-Services.output  https://github.com/Informatievlaanderen/VSDS-LDESWorkbench-Services;
echo -e "\n\n############trivy scan ../VSDS-LDES-E2E-testing############\n\n" ;
trivy repo --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL --commit ${VSDS_LDES_E2E_testing:-f5a60040b2052773c298bed3} -o ./RRepoCom/VSDS-LDES-E2E-testing.output  https://github.com/Informatievlaanderen/VSDS-LDES-E2E-testing;


