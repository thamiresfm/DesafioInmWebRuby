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
        echo " Build or Resolver dependencies"
        sh "rm -f gemfile.lock"
        sh 'bundle install'
      }
    }
       stage('Test'){
      steps
      {
        echo " Running regression test"
        sh 'bundle exec cucumber -p ci'
        
     
      }
      post{
        always{
          cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'report', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
        }
      }
    }
       
    
  }
}