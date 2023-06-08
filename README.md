# 📈Scaling Infrastructure with Terraform

This repository provides an example project demonstrating how to scale your infrastructure using Terraform. Scaling allows you to add or remove resources dynamically to match the changing demands of your application, ensuring optimal performance and cost-efficiency.

## Understanding Scaling 📈

Scaling is the process of adjusting the number of resources in your infrastructure to handle varying workloads. As your application grows, you may need to add more resources to accommodate increased traffic. Conversely, during periods of low demand, you can remove unnecessary resources to save costs.

Terraform simplifies the process of scaling by offering a declarative approach to defining your infrastructure resources. By specifying the desired number of resources, Terraform automatically creates or destroys them as needed.

## Pre-requisites 🔑

Before getting started, make sure you have completed the following setup steps:

1. Create a `terraform.tf` file to declare the required providers for your system. Here is an example:
2. Create a `provider.tf` file to specify the AWS region you'll be working in. Adjust the region according to your needs:
3. Create a `userdata.sh` file with the necessary user data script. This script is executed when a new instance is launched and performs initial configuration tasks.

## Task 1: Create an Auto Scaling Group 🏢

Auto Scaling Groups automatically add or remove EC2 instances based on the current demand. Follow these steps to create an Auto Scaling Group:

1. Create a `main.tf` file that contains the EC2 configuration along with auto-scaling configurations.

2. Run `terraform apply` to create the Auto Scaling Group and all its dependent resources, as mentioned in the pre-requisites.

3. Let's navigate to the AWS Management Console to check the created Auto Scaling Group. Since we set the desired capacity to 2 in the auto-scaling Terraform configuration, there should be two instances created.

## Task 2: Test

 Scaling 🧪

1. Go to the AWS Management Console and select the Auto Scaling Groups service.

2. Choose the Auto Scaling Group you just created and click on the "Edit" button.

3. Increase the "Desired Capacity" to 3 and click on the "Save" button.

4. Wait a few minutes for the new instances to be launched.

5. Go to the EC2 Instances service and verify that the new instances have been successfully launched.

6. Decrease the "Desired Capacity" to 1 and wait for a few minutes for the extra instances to be terminated.

7. Check the EC2 Instances service again to ensure that the additional instances have been terminated.

That's it! Congratulations! 🎊🎉 You have successfully scaled your infrastructure using Terraform.

```
## More Detailes
For more details, you can also refer to the accompanying [blog post](https://dhananjaykulkarni.hashnode.dev/scaling-with-terraform).

---

Enjoy your Terraform AWS infrastructure journey! If you have any questions or need further assistance, please don't hesitate to reach out.

Happy coding! 🚀👩‍💻👨‍💻
