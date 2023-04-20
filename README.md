# Serverless Machine Learning Model

A linear model used to classify breast cancer instances using UCI'S breast cancer diagnostic data set. Model is trained using AWS Sagemaker and invoked using Amazon API Gateway and an AWS Lambda function.

*adapted from [this AWS Blog Post](https://aws.amazon.com/blogs/machine-learning/call-an-amazon-sagemaker-model-endpoint-using-amazon-api-gateway-and-aws-lambda/)*

# Architectural Diagram
![project3 drawio](https://user-images.githubusercontent.com/55398496/233505319-c71e3006-9815-443e-9019-1548b853e1f2.png)


# Steps to reproduce

## How to run

1. Clone repository
```
git clone https://github.com/nogibjj/Machine-Learning-Serverless.git
```

2. Install dependencies
```
make install
```

3. Set up AWS Permissions. More info on this can be found [here](https://aws.amazon.com/blogs/machine-learning/call-an-amazon-sagemaker-model-endpoint-using-amazon-api-gateway-and-aws-lambda/)

4. Run the Breast Cancer Prediction notebook inside the *setup* folder. This allows you to train your model and host it with an Amazon Sagemaker endpoint.

5. Now that the model & endpoint are setup, you can invoke the API by running
```
python invoke.py
```
To enter more predictions, simply change the values inside json.dumps() within this file.

6. Turn off your resources! You can either run the last cell in the notebook, or do this through the AWS Management Console. On the console, you should only need to delete your endpoint and model (under Amazon Sagemaker) as the Lambda function will not incur costs unless invoked.
