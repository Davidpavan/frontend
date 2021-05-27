@Library('Todo') _

pipeline{
        agent{
            label 'JAVA'
        }
        stages{
            stage('Downloading dependencies'){
                steps{
                    sh '''
                    npm install && npm run build
                    '''
                }
            }
            stage('Preparing Artifacts'){
                steps{
                    sh '''
                    zip -r frontend.zip *
                    '''
                }
            }
            stage('Upload Artifacts'){
                steps{
                    script{
                        nexus
                      }
                    }
                }
    }
}
