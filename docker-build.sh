#BUILD
docker build -t $1 .

echo "run docker satish"
# RUN
docker run -d --rm  -v $PWD:/cavo2 --name satish $1 $2

docker logs -f satish

echo "-----------------------------------"
