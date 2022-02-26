pipeline{

 environment { 
                AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS')
                AWS_SECRET_ACCESS_KEY = credentials('AWS_ACCESS')
            }
agent any
      
stages{
    stage('Checkout'){AWS_ACCESS
        steps{
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/bansa2/eks-jenfile.git']]])
        }
    }
    stage('terraform init'){
        steps{
            sh ('terraform init')
        }
    }  
    stage('terraform validate'){
        steps{
            sh ('terraform validate')
        }
    } 
    stage('terraform plan'){
        steps{
            sh ('terraform plan')
        }
    } 
    stage('terraform Action'){
        steps{
              echo "Terraform action is --> ${action}"
              sh ('terraform ${action} --auto-approve')
        }
    }  
}
}
