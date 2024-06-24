pipeline {
        agent any
    parameters { choice(name: 'ACTION', choices: ['apply', 'destroy', 'plan'], description: 'Select the action') }

    stages {
        stage('git clone ') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-ssh-key', url: 'git@github.com:Talent-devops19/eks.git']])
            }
        }
        stage('Initialize ') {
            steps {
               sh 'terraform init'
            }
        }
        stage('Validate ') {
            steps {
               sh 'terraform validate'
            }
        }
        stage('plan ') {
            steps {
               sh 'terraform plan'
            }
        }
        stage('apply ') {
            when { ACTION 'apply' }
            steps {
               sh 'terraform apply --auto-approve'
            }
        }
        stage('destroy ') {
             when { ACTION 'destroy' }
            steps {
               sh 'terraform destroy --auto-approve'
            }
        }
        
    }
    post{
        always{
            emailext body: '''Hi,

     The jenkins has been failed . please check it.

     Thanks
     Devops Team''', subject: 'testing jenkins pipeline: $JOB_URL', to: 'malleshdevops2021@outlook.com'
    }
    }
}
