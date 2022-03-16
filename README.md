# MonashCyberBootcampW13Project
The goal of this project was to practise GitHub documentation using artefacts developed throughout the bootcamp's Bash Scripting, Cloud Security, and Network Security weeks. This is the repository where the W13 deliverable for the Monash University Cybersecurity Bootcamp is being submitted.

Coverage of artefacts covered as part of this documetation includes:
* Ansible YAML scripts from the Cloud Security Unit.
* Bash scripts from the Linux System Administration Unit.
* Network diagrams from the Cloud Security and Networking Units.

## Network Diagram
We created our infrastructure on the Microsoft Azure platform. The following diagram outlines the high level network diagram of the cloud infrastructure.

![Architecture of the Azure Setup](/Diagrams/Diagram.jpg?raw=true "The Set Up")

### Description of the deployment

The VMs have been created using Azure's Australia Central and Southeast regional pools, with modest config to allow for the hosting of containers, the ELK stack and the DVWAs. 
The network security group has been configured to allow private network communications across the cloud environment but blocks all other external IPs except admin's.

### Access policies and network addresses.

#### Network Addresses

Address space 10.0.0.0/16 and 10.1.0.0/16 (two VNets were peered, for simplicity one is shown in diagram)


| Item          | Public IP     | Private IP    |
| ------------- | ------------- | ------------- |
| Elk VM        | 20.37.0.215   | 10.1.0.4      |
| Web VM 1      | 10.0.0.5      | Not Exposed   |
| Web VM 2      | 10.0.0.6      | Not Exposed   |


