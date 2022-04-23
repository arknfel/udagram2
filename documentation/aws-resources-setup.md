# AWS Resources Setup

A run book guide to create and configure the AWS resources that we will be using.  

## Requirements
- AWS CLI version 2 [installation instructions](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)  
- EB CLI 3.20.3 (Python 3.10.) [installation instructions](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html)

## RDS

1. Creating RDS Postgres DB instance:  
    ```bash
    aws rds create-db-instance \
    --db-instance-identifier udagram-db \
    --db-instance-class db.t3.micro \
    --allocated-storage 20 \
    --engine postgres \
    --master-username postgres \
    --master-user-password postgres \
    --db-name udagram \
    --backup-retention-period 0 \
    --storage-type gp2 \
    --no-multi-az \
    --publicly-accessible
    ```  

2. Adding an inbound rule for DB's security group to allow all connections:  
    ```bash
    aws ec2 authorize-security-group-ingress \
    --group-id <security-group-id> \
    --protocol all \
    --cidr 0.0.0.0/0
    ```

## EBS

1. At the repo root directory `cd udagram-api`   
2. `touch .ebignore` to include all files that are to be ignored from code deployments.  
3. `eb init` to initialize the eb application `udagram-api-app`.  
4. `eb create` to create new environment `udagram-api-app-dev`.  
6. `eb health` to check environment health.  


## S3
