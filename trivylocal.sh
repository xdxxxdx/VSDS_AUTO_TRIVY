
echo "############trivy scan ../VSDS-LDESServer4############"
trivy fs --offline-scan --security-checks vuln,secret,config --severity HIGH,CRITICAL -o ./LocalRepo/VSDS-LDESServer4-local.output ../VSDS-LDESServer4J;
echo "############trivy scan ../VSDS_VSDS_Linked_Data_Interactions ############" 
trivy fs --offline-scan  --security-checks vuln,secret,config --severity HIGH,CRITICAL -o ./LocalRepo/VSDS_VSDS_Linked_Data_Interactions.output  ../VSDS-Linked-Data-Interactions;