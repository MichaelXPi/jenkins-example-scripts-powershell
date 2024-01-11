pipeline {
  agent any
  parameters {
    base64File description: 'Certificate File to Upload', name: 'Certificate'
    string(name: CertString, defaultValue: '')
  }
  stages {
    stage('version') {
      steps {
        echo "${EnterpriseId}"
        echo "${PartyCode}"
        CertString = sh 'cat $Certificate | base64 -d'
        echo "${CertString}"
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
