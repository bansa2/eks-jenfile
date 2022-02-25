pipeline{
agent any
environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
stages{
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
