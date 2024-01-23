pipeline {
    agent any

    environment {
        DOCKER_HUB_CREDENTIALS = credentials('dockerhub')
    }

    stages {
        stage('Build website') {
            steps {
                script {
                    // Trigger build on commits to master or hotfix branch
                    checkout scm
                    // Your build steps here
                }
            }
        }

        stage('Test website') {
            steps {
                script {
                    // Your testing steps here
                }
            }
        }

        stage('Push to Docker hub') {
            steps {
                script {
                    // Build Docker image and push to Docker Hub
                    withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'DOCKER_HUB_CREDENTIALS', usernameVariable: 'hariagre', passwordVariable: 'Datta123#']]) {
                        sh '''
                            docker build -t hariagre/website .
                            docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD
                            docker push hariagre/website
                        '''
                    }
                }
            }
        }

        stage('Push to production') {
            when {
                expression { currentBuild.currentResultIsBetterOrEqualTo('SUCCESS') }
            }
            steps {
                script {
                    // Your deployment steps to production
                }
            }
        }
    }
}

