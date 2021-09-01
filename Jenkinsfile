pipeline {
    agent any
    stages {
        stage('Build Application'){
            steps{
                sh "mvn -f pom.xml clean package"
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
                sh '${BUILD_URL}'
                sh 'docker build . -t tomcatsamplewebapp:${BUILD_NUMBER}'

            }
        }
    }
}