pipeline {
    agent any
 stages {
        stage('Terraform Plan') {
            when {
                    expression { ACTION == 'DEPLOY'}
                }
            steps {
                    sh 'terraform init'
                    sh 'terraform validate'
                    sh 'terraform plan'
                    sh 'terraform apply --auto-approve'
            }
        }
        
        stage('Terraform Destroy') {
            when {
                    expression {ACTION == 'DESTROY'}
                }
            steps {
                    sh 'terraform init'
                    sh 'terraform destroy --auto-approve'
                }
        }
    }
}
