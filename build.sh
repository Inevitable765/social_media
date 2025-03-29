docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID kushal765/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID kushal765/$JOB_NAME:latest

docker push kushal765/$JOB_NAME:$BUILD_ID

docker push kushal765/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID kushal765/$JOB_NAME:$BUILD_ID kushal765/$JOB_NAME:latest
