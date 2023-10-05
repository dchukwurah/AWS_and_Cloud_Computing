

# How to create a dashboard
1. Create an instance
2. Go to Instance summary
3. Scroll down and click on monitoring in the tabs
4. On the right side will be an option for Manage detail monitoring
   1. This allows you to enable detail monitoring which will check the instance in periods of a minute (does cost more)
   2. Under Detailed monitoring check the "Enable" box
   3. Confirm
5. Below 'Detailed monitoring' select Add to dashboard
   1. You will be moved to CloudWatch were you can create or use existing dashboard
   2. Either create new with the name or select an existing dashboard from the dropdown menu.
   3. Add to Dashboard

# How to create an alarm for CPU usage

1. Go to CloudWatch console
2. In the navigation pane, select **Alarms**, then **All Alarms**
3. Choose **Create Alarm**
4. Choose **Select metric**
5. In the **All metrics**
   1. Select the **EC2** tab
   2. Select **Per-Instance Metrics**
   3. In the search bar paste in the id of your instance
   4. Scroll to find the metric named **CPUUtilization**
   5. Select Metric
6. In Specify metric and conditions
   1. **Metric** - **Statistic** check that it is set to average.
   2. **Conditions** - **Threshold type** keep that as static
   3. Select the threshold you require for your alarm, the number value as well as the condition.
   4. Select **Next**
7. Notifications
   1. Select **In Alarm**
   2. **Create new topic**
   3. Enter topic name
   4. Enter email to notify
   5. Next
8. Name and Description
   1. Enter the name of your alarm
   2. Enter a description explaining what the alarm is for
9. Confirm subscription for the alarm SNS topic by going to your email you should find an email asking you to accept
10. Receiving alarms once the threshold is met, you will recieve another email.

#### raw notes

#### if CPU loads gets too high
#### can heat up and fall over/crash
#### an application
#### we want to monitor to ensure this doesnt happen
#### cloud watch does monitoring on aws
#### monitors CPU load and also the data is fed to a dashboard
#### visual aids and charts of CPU usage/utilisation
#### go to manage detailed monitoring - this costs more money but is worth it
#### set up dashboard
#### set up alarm