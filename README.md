cloudStart-Terraform  

Provision AWS EC2 instances using Terraform like a pro!  
This is my very first Infrastructure-as-Code (IaC) project built with Terraform to automate the deployment of cloud resources on Amazon Web Services (AWS).

 What This Project Does
This project provisions an EC2 instance on AWS using Terraform. It includes:
- Secure handling of AWS credentials via a separate `.tfvars` file
- Clearly defined variables and outputs
- Clean, reusable code — great for scaling and collaboration
- `.gitignore` in place to keep secrets safe
 Tech Stack
- **Terraform** – for infrastructure provisioning
- **AWS EC2** – as the cloud compute service
- **VS Code** – to write and manage all the code

 Security Consideration
Your AWS secrets are **not** exposed — they are stored in `secrets.tfvars`, which is ignored in version control using `.gitignore`.  
This way, your access keys stay private and your GitHub stays professional.

 How to Use
1. Clone the project:
   ```bash
   git clone https://github.com/BHAGWAN-KBEF/Cloud-DevOps-Terraform.git
   cd CloudStart-Terraform
   ```
2. Install Terraform if you haven't already. You can follow the [official guide](https://learn.hashicorp.com/tutorials/terraform/install-cli) to install it.

3. Navigate to the project directory and initialize Terraform:
   ```bash
   terraform init
   ```

4. Set up your AWS credentials by creating a `secrets.tfvars` file and add your AWS access key and secret key:
   ```plaintext
   aws_access_key = "your-access-key"
   aws_secret_key = "your-secret-key"
   ```

5. Validate your Terraform configuration:
   ```bash
   terraform validate
   ```

6. Apply the Terraform plan to provision the EC2 instance:
   ```bash
   terraform apply
   ```

   You will be prompted to confirm the action. Type `yes` to proceed.

7. Once deployed, Terraform will output the details of the EC2 instance.

 Project Structure
- **main.tf** – Main configuration file for provisioning resources.
- **variables.tf** – Defines the variables used in the project.
- **outputs.tf** – Outputs relevant information such as EC2 instance details.
- **secrets.tfvars** – AWS credentials (not tracked by GitHub for security).
- **.gitignore** – Prevents sensitive data and Terraform state files from being committed.

Future Enhancements
- Automate the creation of additional AWS resources (S3, RDS, etc.)
- Add modules for reusable Terraform code
- Integrate with AWS IAM roles and policies for secure provisioning
- Implement environment-specific configurations (dev, prod, staging)


Feel free to contribute or suggest any improvements. Enjoy deploying AWS resources with Terraform!
