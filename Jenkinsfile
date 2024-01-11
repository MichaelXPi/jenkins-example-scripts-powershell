def certString="No Cert"
pipeline {
  agent any
  parameters {
    base64File description: 'Certificate File to Upload', name: 'Certificate'
  }
  
  stages {
    stage('version') {
      steps {
        script {
          echo "${EnterpriseId}"
          echo "${PartyCode}"
          echo "${certString}"
          certString = sh(script: "echo $Certificate | base64 -d", returnStdout: true).trim();
          echo "${certString}"
          sh 'pwsh --version'
        }        
      }
    }
    stage('hello') {
      steps {
        sh 'pwsh hello.ps1 "${EnterpriseId}" "${PartyCode}"'
      }
    }
  }
}
