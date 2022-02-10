pipeline {
    agent any
    stages {
        stage('deploy') {
            steps {
              sh "aws configure set region ap-south-1"  
              sh "aws s3 cp Code/index.html s3://my-static-bucket-jenkins"
            }
        }
    }
}
