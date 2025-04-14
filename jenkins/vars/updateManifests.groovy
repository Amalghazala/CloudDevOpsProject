def call() {
    echo "📝 Updating Kubernetes deployment manifest with new image..."
    sh """
        sed -i 's|image:.*|image: ${DOCKER_REGISTRY}/${IMAGE_NAME}:latest|' \
        docker/FinalProjectCode/web-app/kubernetes/deployment.yaml
    """
}

