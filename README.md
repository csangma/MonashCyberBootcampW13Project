# MonashCyberBootcampW13Project
The goal of this project was to practise GitHub documentation using artefacts developed throughout the bootcamp's Bash Scripting, Cloud Security, and Network Security weeks. This is the repository where the W13 deliverable for the Monash University Cybersecurity Bootcamp is being submitted.

Coverage of artefacts covered as part of this documetation includes:

* Network diagrams from the Cloud Security and Networking Units.
* Ansible YAML scripts from the Cloud Security Unit.
* Bash scripts from the Linux System Administration Unit.

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
| Web VM 1      | Not Exposed   | 10.0.0.5      |
| Web VM 2      | Not Exposed   | 10.0.0.6      |
| Jumpbox       | 52.255.57.30  | 10.0.0.4      |

#### Access Policies

| Item          | Public        | From Private            |
| ------------- | ------------- | ----------------------- |
| Elk VM        | By ssh        | From Jumpbox Container  |
| Web VM 1      | Not Exposed   | From Jumpbox Container  |
| Web VM 2      | Not Exposed   | From Jumpbox Container  |
| Jumpbox       | By ssh        | N/A                     |

## Description of Kibana Investigation

Our ELK stack contains Kibana which is an open-source analytics and visualization platform. As part of this course, we utilized Kibana to interact with and visualize data stored in Elasticsearch indices. Using the front-end gui from my web browser, I was able to access the Kibana services hosted on the ELKVM. I utilized the platform to identify  connections and web request patterns across country, time, OS type. I performed advanced data analysis and visualizations utilizing charts, tables and maps to identify anomalous activity source, location, trends, and deep dives on particular connection history.

## Ansible YAML scripts from the Cloud Security Unit

Ansible was used for configuration, deployment, and orchestration of the cloud environment. The playbooks are provided in the directory, and are used to spring up ELK Stack in ELK VM and the DVWAs in the web servers.  


