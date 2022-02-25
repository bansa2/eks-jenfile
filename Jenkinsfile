pipeline{

parameters{
    string(name: 'environment', defaultValue: 'terraform', description: 'workspace/environment')
    booleanParam(name: 'autoApprove',defaultValue: fales, description: 'Automaticaly run after generating plan')
}


environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

agent any
stages{
    stage('Checkout a'){
        steps{
            git "https://github.com/bansa2/eks-jenfile.git"
        }
    }
    stage('terraform init'){
        steps{
            sh label:'', script:'terraform init'
        }
    }  

    stage('terraform validate'){
        steps{
            sh label:'', script:'terraform validate'
        }
    }  
    stage('terraform plan'){
        steps{
            sh label:'', script:'terraform plan'
        }
    } 
    stage('terraform apply'){
        steps{
            sh label:'', script:'terraform apply'
        }
    } 
}
}
