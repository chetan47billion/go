echo ###################### 
echo # BUILD DOCKER IMAGE #
echo ######################

docker build --no-cache -t cavo2/weed-proxy:$1 .

echo ####################
echo # LOGIN DOCKER HUB #
echo ####################

docker login -u cavo2 

echo ###################################
echo # PUSH DOCKER IMAGE ON DOCKER HUB #
echo ###################################

docker push cavo2/weed-proxy:$1

