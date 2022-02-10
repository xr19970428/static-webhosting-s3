pipeline {
    agent any
    stages {
        stage('deploy') {
            steps {
              sh "aws configure set region ap-south-1"  
              sh "aws configure set aws_access_key_id AKIAQ63WAHHUXG6MHHOH"  
              sh "aws configure set aws_secret_access_key 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"  
              sh "aws s3 cp Code/index.html s3://my-static-bucket-jenkins --recursive"
            }
        }
    }
}
