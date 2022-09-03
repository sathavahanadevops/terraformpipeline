pipeline {
    agent any
 
    stages {
        
        stage('Terraform Plan') {
            when {
                    expression {
                        params.ACTION == 'DEPLOY'
                    }
                }
            steps {
                    sh 'terraform init'
                    sh 'terraform validate'
                    sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            when {
                    expression {
                        params.ACTION == 'DEPLOY'
                    }
                }
            steps {
                    sh 'terraform init'
                    sh 'terraform apply --auto-approve'
            }
        }
        stage('Terraform Destroy') {
            when {
                    expression {
                        params.ACTION == 'DESTROY'
                    }
                }
            steps {
                    sh 'terraform init'
                    sh 'terraform destroy --auto-approve'
                }
        }
    }
}
