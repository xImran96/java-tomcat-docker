// pipeline {
//     agent any
//     stages {
//         stage('Build Application') {
//             steps {
//                 sh 'mvn -f java-tomcat-sample-docker/pom.xml clean package'
//             }
//             post {
//                 success {
//                     echo "Now Archiving the Artifacts...."
//                     archiveArtifacts artifacts: '**/*.war'
//                 }
//             }
//         }

//         stage('Create Tomcat Docker Image'){
//             steps {
//                 sh "pwd"
//                 sh "ls -a"
//                 sh "docker build ./java-tomcat-sample-docker -t tomcatsamplewebapp:${env.BUILD_ID}"
//             }
//         }

//     }
// }



pipeline {
    agent any

    stages {
        stage('Build Application'){
            steps{
                sh "mvn -f java-tomcat-sample-docker/pom.xml clean package"
            }
            post{
                success {
                    echo "Archiving the Artifacts...."
                    archiveArtifacts artifacts:'**/*.war'
                }
            }
        }
        stage('Create Tomcat Docker Image') {
            steps{
                sh 'docker build ./java-tomcat-sample-docker/Dockerfile -t tomcatsamplewebapp:latest'

            }
        }
    }
}