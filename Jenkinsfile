pipeline {
    agent any
    
    stages {
        stage("Cleaning before building"){
           steps {
            deleteDir()
         }
        }
         stage("clone repo") {
            steps {
                bat "git clone https://github.com/reni-varghese/pipeline-repo.git"
            }
         }
        stage("build"){
            steps {
                dir("pipeline-repo"){
                bat "mvn clean package"
                }
            }
        }
        stage("Creating docker image"){
            steps {
                dir("pipeline-repo"){
                    bat "docker build -t renivarghese/new-greet-service:latest ."
                }
               
            }
        }
        stage("push docker image to the docker hub"){
            steps {
                bat "docker login -u renivarghese -p dckr_pat_1Ak1BlQF7zdStrhbWVhaHAQL4UU"
                bat "docker push renivarghese/new-greet-service:latest"
            }
        }

    }

}