pipeline {
    agent any
environment{
PASS = credentials('reg-cred')

}

    stages {
        stage('Build') {
            steps {
               sh '''
               ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
               '''
            }
    post {
        always {
            archiveArtifacts artifacts: 'simple-java-maven-app/target/*.jar', fingerprint: true
        }
    }
        }
        stage('Test') {

            steps {
                echo 'Testing..'
		sh './jenkins/test/mvn.sh mvn test'
            }
    post {
        always {
            junit 'simple-java-maven-app/target/sunfire-reports/*.xml'
        }
    }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
		sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}
