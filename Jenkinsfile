line{
agent any
tools {
    terraform 'terraform-11'
}
stages{
    stage('Git Checkout'){
        steps{
            gitcredentialsId: 'github', url: "https://github.com/bansa2/eks-jenfile.git"
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
