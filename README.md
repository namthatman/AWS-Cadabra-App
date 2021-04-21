CREDIT: Udemy course, "AWS Certified Big Data Specialty 2020 - In Depth & Hands On!", by Sundog Education by Frank Kane, Frank Kane, Stephane Maarek

# AWS Cadabra App System

## Cadabra's Architecture
![Full System](https://raw.githubusercontent.com/namthatman/AWS-Cadabra-App/main/Cadabra.JPG)

Architecture system of Cadabra.com, e-commerce web application built using Amazon Web Services (AWS)

## System Breakdown
### 1. Order History
![Order History](https://raw.githubusercontent.com/namthatman/AWS-Cadabra-App/main/functions/Order_History.JPG)

Order history function simulate order data being generated from logs on EC2 instance and publish that data using Kinesis Data Streams into an AWS Lambda function which in turn will populate an order database in DynamoDB that the app can read from.

### 2. Product Recommendations
![Product Recommendation](https://raw.githubusercontent.com/namthatman/AWS-Cadabra-App/main/functions/Product_Recommendation.JPG)

Automated product recommendations which involves training an ALS machine learning model based on aggregate customer purchasing data. To build this we will publish our order data through Kinesis Data Firehose into a busket S3 and spin up an AWS EMR cluster to produce recommendations model using Apache Spark.

### 3. Transaction Rate Alarm
![Transaction Rate Alarm](https://raw.githubusercontent.com/namthatman/AWS-Cadabra-App/main/functions/Transaction_Rate_Alarm.JPG)

An real-time operational system that alerts if an unexpected rate of orders comes in all of a sudden. To build this we will use Kinesis Data Streams and Kinesis Data Analytics to monitor our incoming orders and use a Lambda function to fire off alarms using AWS SNS to mobile phone when something unusual happens.

### 4. Log Analysis
![Log Analysis](https://raw.githubusercontent.com/namthatman/AWS-Cadabra-App/main/functions/Log_Analysis.JPG)

Log Analysis system to analyze server logs data in near real time for operational purposes. For this, we will use Kinesis Data Firehose to pump Apache logs directly into AWS Elasticsearch where we can query that data and build analysis dashboards using Kabana.

### 5. Data Warehousing & Visualization
![Data Warehousing and Visualization](https://raw.githubusercontent.com/namthatman/AWS-Cadabra-App/main/functions/Data_Lake_And_Warehousing.JPG)

Data Warehousing and Visualization that need for business analysis purposes by using AWS Glue, Athena and Redshift, Quicksight on top of S3 data lake.
