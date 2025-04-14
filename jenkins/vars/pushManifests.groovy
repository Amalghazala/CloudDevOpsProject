def call() {
    echo "🚀 Applying Kubernetes manifests..."
    sh "kubectl apply -f docker/FinalProjectCode/web-app/kubernetes/ -n ivolve"
}
