def call() {
    echo "📤 Pushing Docker image to registry..."
    sh "docker push ${DOCKER_REGISTRY}/${IMAGE_NAME}:latest"
}
