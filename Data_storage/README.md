# AWS EBS and EFS Storage Solutions

## Table of Contents

- [Project Overview](#project-overview)
- [Architecture Diagram](#architecture-diagram)
- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
  - [Amazon EBS Setup](#amazon-ebs-setup)
  - [Amazon EFS Setup](#amazon-efs-setup)
- [Usage](#usage)
  - [Using EBS for Application Data](#using-ebs-for-application-data)
  - [Using EFS for Shared Data](#using-efs-for-shared-data)
- [Cleanup](#cleanup)
- [Contributing](#contributing)
- [License](#license)

## Project Overview

This project provides a comprehensive guide to setting up Amazon EBS (Elastic Block Store) and Amazon EFS (Elastic File System) on AWS. The setup supports different use cases:
- **Amazon EBS** is used for storing application data on a single EC2 instance.
- **Amazon EFS** is used for shared storage accessible by multiple EC2 instances.

The guide includes instructions for creating, attaching, formatting, and mounting storage solutions, as well as best practices for ensuring data persistence and consistency.

## Architecture Diagram

[Include a visual diagram of the architecture showing how Amazon EBS is connected to an EC2 instance and how Amazon EFS is shared among multiple EC2 instances.]

## Prerequisites

Before starting, ensure you have the following:
- AWS Account with administrative access
- Basic knowledge of EC2, EBS, and EFS
- AWS CLI configured on your local machine
- EC2 key pair for SSH access

## Setup Instructions

### Amazon EBS Setup

1. **Create an EC2 Instance:**
   - Launch an EC2 instance from the AWS Management Console.
   - Select an appropriate instance type and key pair for SSH access.

2. **Create and Attach an EBS Volume:**
   - Navigate to the EC2 Dashboard and create a new EBS volume in the same AZ as your EC2 instance.
   - Attach the EBS volume to your EC2 instance.

3. **Format and Mount the EBS Volume:**
   - SSH into your EC2 instance.
   - Format the EBS volume: `sudo mkfs -t ext4 /dev/xvdf`
   - Mount the volume: `sudo mount /dev/xvdf /mnt/ebs`

### Amazon EFS Setup

1. **Create an Amazon EFS File System:**
   - Create a new EFS file system from the Amazon EFS console.
   - Ensure it is accessible from the VPC and subnets used by your EC2 instances.

2. **Mount the EFS File System:**
   - Install the NFS client on each EC2 instance.
   - Mount the EFS file system on `/mnt/efs`.

## Usage

### Using EBS for Application Data

- After mounting, create and edit files on the EBS volume:
  ```bash
  echo "Application Data" | sudo tee /mnt/ebs/appdata.txt
  ```
- Data on the EBS volume will persist even after the EC2 instance is stopped and started.

### Using EFS for Shared Data

- On one EC2 instance, create a file on the EFS mount:
  ```bash
  echo "Shared Data" | sudo tee /mnt/efs/shareddata.txt
  ```
- Verify on another EC2 instance that the file is available and reflects changes made on the first instance.

## Cleanup

To avoid unnecessary costs, clean up all resources after use:
1. **Unmount the EBS and EFS volumes** from all EC2 instances.
2. **Delete all files** created on the EBS and EFS volumes.
3. **Detach and delete the EBS volume** from the EC2 instance.
4. **Delete the EFS file system** from the AWS console.
5. **Terminate all EC2 instances** used in the project.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue for any improvements or suggestions.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

