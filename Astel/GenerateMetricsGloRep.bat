ROBOCOPY "./Results/Login" "RobotMetrics" Login_Out.xml /mir
ROBOCOPY "./Results/Customer" "RobotMetrics" Customer_Out.xml /mir
ROBOCOPY "./Results/Charges" "RobotMetrics" Charges_Out.xml /mir
ROBOCOPY "./Results/Services" "RobotMetrics" Services_Out.xml /mir
ROBOCOPY "./Results/Packages" "RobotMetrics" Packages_Out.xml /mir
ROBOCOPY "./Results/Profile" "RobotMetrics" Profile_Out.xml /mir
ROBOCOPY "./Results/Reasons" "RobotMetrics" Reasons_Out.xml /mir
ROBOCOPY "./Results/Discounts" "RobotMetrics" Discounts_Out.xml /mir
ROBOCOPY "./Results/Search" "RobotMetrics" Search_Out.xml /mir
ROBOCOPY "./Results/Notifications" "RobotMetrics" Notifications_Out.xml /mir
ROBOCOPY "./Results/Subscriptions" "RobotMetrics" Subscriptions_Out.xml /mir
ROBOCOPY "./Results/Billing" "RobotMetrics" Billing_Out.xml /mir

robotmetrics --inputpath ./RobotMetrics/ --output "Administration_Out.xml,Configuration_Out.xml,Customer_Out.xml,Login_Out.xml,Quotes_Out.xml,Reseller_Out.xml"  --logo "456.png"
