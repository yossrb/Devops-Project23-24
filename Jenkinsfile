pipeline {
     agent any

     stages {
         stage('Checkout GIT') {
             steps {
                 echo 'Pulling...'
                 git branch: 'product',
                 url: 'https://github.com/yossrb/Devops-Project23-24.git'
             }
         }
         stage('Clean') {
             steps {
                 sh "mvn clean"
             }
         }
         stage('Compile') {
             steps {
                 sh "mvn compile"
             }
         }
         stage('Testing Maven') {
             steps {
                 sh "mvn -version"
             }
         }

         
 stage("SonarQube") {
         	steps {
 	            sh "mvn sonar:sonar -Dsonar.login=admin -Dsonar.password=sonar"
 	        }
         }


     
 stage('Nexus'){
          steps{
               script {
               def nexusUsername = 'admin'
               def nexusPassword = 'nexus'
                    sh "mvn deploy --settings /usr/share/maven/conf/settings.xml -Dusername=${nexusUsername} -Dpassword=${nexusPassword}"
                     }
                 }
             }

     stage('DockerHub') {
      steps {
        sh 'docker login -u yasminebouguerra -p docker2019'
           }
     }

stage('Building image') { 
            steps { 
                    sh 'docker build -t yasminebouguerra/devops:0.0.1 .'
                }
            } 
          
 stage('Deploy our image') { 
            steps { 
                script {
                    sh 'docker push yasminebouguerra/devops:0.0.1'
                }
            } 
        }

          
      }
     
 }
