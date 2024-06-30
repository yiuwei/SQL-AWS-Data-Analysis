# SQL-AWS-Data-Analysis
The purpose is to create a database in AWS EC2 instance and utilize MySql Server to analyze data. Run the following commands in the documentation to install the required SQL server into the EC2 instance. There are three files in the project, the create_data.sql file, the insert_data.sql, and the analysis.sql which are combined to produce the data analysis. 

**Instructions to Run Server**

The instructions to setup and connect the MySQL server to AWS EC2 Instance

- Include the wget command 
    * `sudo yum install wget` `sudo yum update wget`
- Download the MySql community
    * `wget https://dev.mysql.com/get/mysql80-community-release-el9-5.noarch.rpm`
- Install the community server 
    * `sudo yum install mysql-community-server -y`
- Start the MySql server
    * `sudo service mysqld start` `sudo service mysqld status`
- Acquire temporary password
    * `sudo grep 'temporary password' /var/log/mysqld.log`  `mysql -uroot -p` 
- Setup a unique password 
    * `ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';`