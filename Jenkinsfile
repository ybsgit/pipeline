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
               ./jenkins/build/mvn.sh
               '''
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
		sh './jenkins/test/mvn.sh mvn test'
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
