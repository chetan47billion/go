#BUILD
docker build -t $1 .

echo "run docker satish"
# RUN
docker run -d --rm  -v $PWD:/cavo2.0 --name satish $1 $2 $3

docker logs -f satish

echo "-----------------------------------"
