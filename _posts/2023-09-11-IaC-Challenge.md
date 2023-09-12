# September 11th - IaC Challenge
Getting a little bit better with formatting. ;)

A former colleague of mine shared with me this Infra as Code Challenge.

https://github.com/docnetwork/Infra-as-code-challenge/blob/main/README.md

I'm going to try my hand at it over the next week or two.

## Goal
The goal is "to deploy an Auto Scaling Group (ASG) of web servers that deliver a website on AWS from a load balancer. This should include the following:
1. VPC Configuration with subnets in multiple Availability Zones
2. EC2 Configuration
3. ELB to manage traffic
4. A running copy of the world's finest Inspirational Quote Generator"

### Requirements
1. Runs on AWS Infrastructure.
2. The website is publicly accessible via the ELB.
3. The website should not be publicly accessible unless going through the ELB.
4. Code is documented in some way or another.

**Bonus Points** (not required at all) for any of the following:
* Include some form of CI/CD pipeline code. GitHub Actions, Jenkins, or any other tool is fine.
* Have the group of ASG's deliver said application via an ECS Cluster.
* Create and use variables so this can be used in multiple builds.
* Create a method to add linting or verifying that the code meets Terraform style conventions.
