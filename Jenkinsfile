pipeline {
    agent any
    stages {
        stage('deploy') {
            steps {
              sh "aws configure set region ap-south-1"  
              sh "aws configure set aws_access_key_id AKIAYKN42LYYSWCDOP7V"  
              sh "aws configure set aws_secret_access_key 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"  
              sh "aws s3 cp /var/lib/jenkins/workspace/pit-deploy_features_all-features/dist/blk-design-system-angular s3://devops-cockpit-pilot --recursive"
            }
        }
    }
}