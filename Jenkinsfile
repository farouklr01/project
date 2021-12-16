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
       stage('Build') {
           steps {
               script {
               sh "sudo ansible-playbook ansible/build.yml -i ansible/inventory/host.yml "    
              	       }
           }
       }
       stage('Docker') {
           steps {
               script {
               sh "sudo ansible-playbook ansible/docker.yml -i ansible/inventory/host.yml "    
              	       }
           }
       }
       stage('Push local image to repositroy') {
           steps {
               script {
               sh "sudo ansible-playbook ansible/docker.yml -i ansible/inventory/host.yml "    
              	       }
           }
       }
   }
}
