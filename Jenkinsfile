pipeline{
agent any
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
