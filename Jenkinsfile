def CertString="No Cert"
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
          echo "${CertString}"
          CertString = sh(script: "echo $Certificate | base64 -d", returnStdout: true).trim();
          echo "${CertString}"
          sh 'pwsh --version'
        }        
      }
    }
    stage('hello') {
      steps {
        script {
          echo "${CertString}"
          sh 'pwsh hello.ps1 "${EnterpriseId}" "${PartyCode}" "${CertString}"'
        }
      }
    }
  }
}
