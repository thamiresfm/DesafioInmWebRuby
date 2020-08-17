pipeline{
  agent{
    docker{
      image 'qaninja/rubywd'
    }
  }
 

  stages{
   
    stage('Build'){
      steps
      {
        echo " Build or Resolver dependêncies"
        // sh "rm -f Gemfile.lock"
        sh 'bundler install'
      }
    }
       stage('Test'){
      steps
      {
        echo " Running regression test"
        sh 'bundler exec cucumber -p ci'
     
      }
      post{
        always{
         cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'report', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
        }
      }
    }

    
  }
}