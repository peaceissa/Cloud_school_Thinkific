# Virtual Coffee Shop Launch - Cloud Infrastructure Setup

## Overview

This project sets up the cloud infrastructure for a virtual coffee shop chain, including a VPC, EC2 instances for the website and backend, and security configurations.

## Steps

### 1. Create a Virtual Private Cloud (VPC)

1. **Create VPC:**
   - Name: `your-vpc-name`
   - IPv4 CIDR block: `10.0.0.0/16`

2. **Create Subnets:**
   - Public Subnet: `10.0.1.0/24`
   - Private Subnet: `10.0.2.0/24`

3. **Create Internet Gateway:**
   - Attach to the VPC.

4. **Update Route Tables:**
   - Add a route to the Internet Gateway for the public subnet.

### 2. Launch EC2 Instances

1. **Website EC2 Instance:**
   - AMI: Amazon Linux 2
   - Instance Type: `t2.micro`
   - Subnet: Public Subnet
   - Security Group: Allow HTTP (80) and SSH (22)

2. **Backend EC2 Instance:**
   - AMI: Amazon Linux 2
   - Instance Type: `t2.micro`
   - Subnet: Private Subnet
   - Security Group: Allow traffic from website EC2 security group

### 3. Configure Security Groups and Network ACLs

1. **Security Groups:**
   - Website EC2: Allow HTTP (80) and SSH (22) inbound
   - Backend EC2: Allow inbound traffic from website EC2 security group

2. **Network ACLs:**
   - Set inbound and outbound rules to control traffic to subnets

## Conclusion

This setup ensures a scalable and secure cloud infrastructure for the virtual coffee shop, with dedicated EC2 instances for the website and backend, proper network segmentation, and security configurations.
