### Build images using production Dockerfile
# Specify muliple tags

GIT_SHA=$(git rev-parse HEAD)
# Build static-website image
docker build -t mayur001/gke-test::$GIT_SHA -f ./Dockerfile 

### Push images

# Push sha tag images to docker hub
docker push mayur001/gke-test::$GIT_SHA

### Deploy

# Apply k8s config
kubectl apply -f .

# Update react-client image
kubectl set image deployment/static-web-deployment days-app-container=mayur001/gke-test:$GIT_SHA

