pipeline {
   agent any
   stages {
       stage('Pull') {
           steps {
               script {
                   checkout([$class: 'GitSCM', branches: [[name: '*/master']],
                   userRemoteConfigs:[[
                   url: 'https://github.com/farouklr01/project.git']]])
               }
           }
       }
     
       stage('Docker') {
           steps {
               script {
               sh "sudo ansible-playbook Ansible/docker.yml -i Ansible/inventory/host.yml "    
              	       }
           }
       }
       stage('Push local image to repositroy') {
           steps {
               script {
               sh "sudo ansible-playbook Ansible/docker.yml -i Ansible/inventory/host.yml "    
              	       }
           }
       }
   }
}


