pipeline {
  agent any
  parameters {
    base64File description: 'Certificate File to Upload', name: 'Certificate'
  }
  environment {
    CERT = "=====No Cert====="
  }
  
  def certString = env.CERT
  stages {
    stage('version') {
      steps {
        echo "${EnterpriseId}"
        echo "${PartyCode}"
        certString = sh(script: "cat $Certificate | base64 -d", returnStdout: true).trim()
        echo "${certString}"
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
