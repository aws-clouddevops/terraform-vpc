pipeline {  
    agent any
    parameters {
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Choose Environment')
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Choose Action')
    }

    stages {
        stage('Terraform Init') {
            steps {
                sh "terrafile -f env-${ENV}/Terrafile"
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
            }
        }
        stage('Terraform Plan') { 
            steps {
                sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }
        stage('Terraform Apply') { 
            steps {
                sh "terraform apply -var-file=env-${ENV}/${ENV}.tfvars -auto-approve"
            }
        }
        stage('Terraform destroy') { 
            steps {
                sh "terraform destroy -var-file=env-${ENV}/${ENV}.tfvars -auto-approve"
            }
        }
    }       
}