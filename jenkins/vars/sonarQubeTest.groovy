def call() {
    echo "🔍 Running SonarQube analysis..."
    withSonarQubeEnv('MySonarQubeServer') {
        sh './gradlew sonarqube'
    }
}
