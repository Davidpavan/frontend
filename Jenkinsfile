pipeline{
  agent any

  stages{
   stage('Preparing Artifacts'){
     steps{
       sh '''
       zip ../frontend.zip *
       '''
     }
   }
  }
}.
