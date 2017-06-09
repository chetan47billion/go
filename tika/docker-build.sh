echo ###################### 
echo # BUILD DOCKER IMAGE #
echo ######################

docker build -t $1 .

echo ###################################
echo # PUSH DOCKER IMAGE ON DOCKER HUB #
echo ###################################

docker push $1

