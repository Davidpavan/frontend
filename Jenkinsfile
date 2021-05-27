@Library('Todo') _

pipeline{
  agent any

  stages{
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
