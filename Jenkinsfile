pipeline {
  agent any
  parameters {
    base64File description: 'Certificate File to Upload', name: 'Certificate'
  }
  stages {
    stage('version') {
      steps {
        echo "${EnterpriseId}"
        echo "${PartyCode}"
        sh 'echo $Certificate | base64 -d'
        sh 'pwsh --version'
      }
    }
    stage('hello') {
      steps {
        sh 'pwsh hello.ps1 "${EnterpriseId}" "${PartyCode}"'
      }
    }
  }
}
