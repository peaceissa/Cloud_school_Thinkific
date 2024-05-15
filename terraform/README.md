## Provisioning Event S3 Buckets with Terraform

This project demonstrates using Terraform to provision S3 buckets for different event themes.

### Prerequisites

* Terraform installed: [https://developer.hashicorp.com/terraform/install](https://developer.hashicorp.com/terraform/install)

###  How to Use

1. **Clone or Download this Repository:** 
   Clone this repository or download the contents, including the `main.tf` file.
2. **Update `main.tf` with your Initials:**
   Open `main.tf` and replace `<your_initials>` with your actual initials in the bucket naming convention.
3. **Choose Event Themes (Optional):**
   By default, the configuration creates buckets for three themes. Update the `event_themes` variable in `main.tf` to include at least three themes you prefer from the provided list.
4. **Run Terraform:**
   Open a terminal in the project directory and run the following commands:
      * `terraform init`: Initializes the Terraform workspace.
      * `terraform plan`: Shows the changes Terraform will make (dry run).
      * `terraform apply`: Creates the S3 buckets (confirm the plan when prompted).
5. **View Outputs:**
   After a successful run, the names of the created buckets will be displayed in the console.

### Terraform Configuration (`main.tf`)

The `main.tf` file defines the Terraform resources to create S3 buckets. Key points:

* **Variable:** `event_themes` defines a list of event themes for bucket creation.
* **Resource:** `aws_s3_bucket` iterates through the `event_themes` list to create buckets with the specified naming convention.
* **Outputs:** `bucket_names` displays the names of the created buckets after provisioning.

### Bucket Naming Convention

Buckets follow the format: `<event_theme>-<your_initials>-bucket`

For example, if the theme is "AdventureTech" and your initials are "JS", the bucket name would be "AdventureTech-JS-bucket".

### Additional Notes

* This example uses the "us-west-2" region. You can modify it if needed.
* The buckets are created with private access control (ACL).

This readme provides a basic guide. Refer to the Terraform documentation [https://www.terraform.io/](https://www.terraform.io/) for a deeper understanding of configuration options.
