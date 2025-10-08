pipeline {
  options {
    buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '10', daysToKeepStr: '', numToKeepStr: '10')
    disableConcurrentBuilds()
  }
  stages {
    stage('Pull Request') {
      when {
        branch 'PR-*'
      }
      steps {
        echo 'Test if this is triggered.'
      }
    }
  }
}
