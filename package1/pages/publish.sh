## RUN THIS COMMAND FIRST TO PUSH TO GCP -> 'gcloud auth configure-docker us-docker.pkg.dev'

img_name=test-deploy
project_id=tidal-guild-377418
latest_tag=$img_name:latest
gcp_url=us-docker.pkg.dev/$project_id/cloud-deploy/$latest_tag

dockerfile=./Dockerfile

docker build \
    -t $latest_tag \
    -f $dockerfile .

# Tag and push to ECR
docker tag $latest_tag $gcp_url
docker push $gcp_url