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
                    sh '''
                     curl -f -v -u admin:admin123 --upload-file frontend.zip http://192.168.0.84:8081/repository/frontend/frontend.zip
                     '''
                    }
                }
            }
        }
    }
}
