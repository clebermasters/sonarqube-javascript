export SONAR_HOST=172.17.0.1:9000
export SONAR_TOKEN=4d99943936480e09ff58fe46eb37ca6fc83554d7
export REPO=$(pwd)/angular-project
export CONFIG_FILE=$(pwd)/sonar-project.properties

docker run \
    --rm \
    -e SONAR_HOST_URL="http://${SONAR_HOST}" \
    -e SONAR_LOGIN="${SONAR_TOKEN}" \
    -v "${REPO}:/usr/src" \
    -v $CONFIG_FILE:/opt/sonar-scanner/conf/sonar-scanner.properties \
    sonarsource/sonar-scanner-cli
