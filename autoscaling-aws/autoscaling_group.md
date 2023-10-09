# Set Up Auto Scaling on AWS
#### Log in to AWS Management Console:
-	Navigate to AWS Management Console and sign in.
#### Access the EC2 Dashboard:
•	From the AWS services list, select 'EC2'.
#### Go to Auto Scaling Groups:
•	In the EC2 dashboard, on the left navigation pane, under 'AUTO SCALING', click on 'Auto Scaling Groups'.
![createasg.png](createasg.png)

#### Initiate Auto Scaling Group Creation:
•	Click the 'Create Auto Scaling group' button.
•	If prompted, create a launch configuration. This defines the EC2 instance settings.
#### Set Up Launch Configuration:
•	Select an AMI (Amazon Machine Image).
•	Choose the desired EC2 instance type.
•	Configure additional settings (e.g., storage, key pair, security groups).
•	Click 'Next', adjust advanced settings if necessary, and finalize by clicking 'Create launch configuration'.
#### Define Auto Scaling Group Parameters:
•	Name your group.
•	Specify the initial group size (number of EC2 instances to start with).
•	Select the VPC (Virtual Private Cloud) and subnets for your instances.
•	If you have a load balancer, integrate it at this stage.
#### Determine Scaling Policies:
•	Opt for 'Use scaling policies to adjust the capacity of this group'.
•	Define the conditions to scale out (add instances) or scale in (remove instances). For instance, you can set rules based on CPU utilization thresholds.
#### Set Up Notifications (Optional):
•	Configure notifications to receive alerts when instances are launched or terminated.
#### Tag Your Instances:
•	Assign tags to your instances for easier identification later on.
#### Review and Activate:
•	Go over all your configurations to ensure accuracy.
•	Click 'Create Auto Scaling group'.
1.	Monitor Your Instances:
•	Return to the EC2 dashboard to observe the instances being launched or terminated based on your scaling policies.
1.	Fine-Tuning:
•	Regularly review your scaling policies and adjust as needed to optimize performance and costs.
use dns to access machine from load balancer

2. **Set Up a Load Balancer**:
   - Navigate to the EC2 dashboard.
   - In the navigation pane, under "Load Balancing", click "Load Balancers".
   - Click "Create Load Balancer".
   - Choose the type of load balancer you want (e.g., Application Load Balancer) and click "Create".
   - Follow the wizard to configure the load balancer settings, listeners, and target groups.

3. **Navigate to Auto Scaling Groups**:
   - In the EC2 dashboard, under "AUTO SCALING", click "Auto Scaling Groups".

4. **Create a Launch Configuration**:
   - Before creating an Auto Scaling group, you need a launch configuration.
   - Click "Create launch configuration".
   - Choose an AMI and an instance type.
   - Configure instance details, storage, and security groups.
   - Click "Next" and review your settings.
   - Click "Create launch configuration" and select an existing key pair or create a new one.

5. **Create an Auto Scaling Group**:
   - Click "Create Auto Scaling group".
   - Choose the launch configuration you just created.
   - Name your Auto Scaling group.
   - Set the group size to "2" (this is your desired capacity).
   - Choose the VPC and Subnets where your instances will be launched.
   - Under "Load balancing", select the option to use a load balancer and choose the load balancer you created in step 2.
   - Ensure that the "Enable load balancing" checkbox is checked.

6. **Configure Scaling Policies**:
   - Under "Scale the Auto Scaling group using step or simple scaling policies", set the following:
     - Increase group size by 1 instance if, for example, average CPU utilization is greater than 70% for 5 minutes.
     - Decrease group size by 1 instance if, for example, average CPU utilization is less than 30% for 5 minutes.
   - Set the minimum group size to "2" and the maximum group size to "3".

7. **Configure Notifications** (Optional):
   - If you want to receive notifications when instances are launched or terminated, set up your notification preferences.

8. **Add Tags**:
   - Tagging helps you identify and manage your instances.

9. **Review and Create**:
   - Review all your configurations to ensure they're correct.
   - Click "Create Auto Scaling group".

10. **Verify Your Setup**:
   - After creating the Auto Scaling group, go to the EC2 dashboard. You should see 2 instances being launched.
   - The instances should automatically register with the load balancer.
   - Depending on traffic and your scaling policies, the number of instances can increase up to 3 or decrease to 2.

11. **Test Your Setup**:
   - Generate traffic to your application to see if the scaling policies you set up are triggered. Monitor the instances in the EC2 dashboard to see if they scale in or out based on the load.


For Cleanup
delete load balancer first