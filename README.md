### Architecture
- Two vpc's one in us-west-2 and one in us-east-1
- Vpc peering steup between the vpcs to use AWS low latency private network
- Launch ec2 instances in placement groups so they are physically close in teh AZ datacenter for node to node low latency communication

### How to apply:
- Deploy everything in global folder FIRST other directories depend on this
- deploythe vpc's
- deploy vpc peering ( depends on vpc's to be built)
- deploy EC2 instances.

### TODO:
- finsih us-east-1 ec2 
- add ansible playbooks
- re work project structure to utilize depends_on: [] terraform functionality
- look into AWS local zones
- look into multi cloud networking via private networks
- integrate aws private link
- block internet from compute nodes
- introduce a firewall vpc however that will take a hit on latency