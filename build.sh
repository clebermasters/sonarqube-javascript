docker build -t bitslovers.com/angular:v1 .
export PROJECT=$(pwd)/angular-project
docker run --rm --name node -v $PROJECT/:/tmp/angular  -t bitslovers.com/angular:v1 npm install
docker run --rm --name node -v $PROJECT/:/tmp/angular  -t bitslovers.com/angular:v1 npm run build