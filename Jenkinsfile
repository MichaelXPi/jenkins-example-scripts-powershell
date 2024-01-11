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
    stage('setup-sso') {
      steps {
        script {
          sh 'pwsh setupsso.ps1 "${EnterpriseId}" "${PartyCode}" "${Certificate}"'
        }
      }
    }
  }
}
