def call() {
    echo "🧹 Deleting local Docker image..."
    sh "docker rmi ${DOCKER_REGISTRY}/${IMAGE_NAME}:latest || true"
}
