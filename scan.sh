export SONAR_HOST=172.20.0.1:9000
export SONAR_TOKEN=241224e49b985a77d65041fd0a48471207efb9c1
export REPO=$(pwd)/angular-project

docker run \
    --rm \
    -e SONAR_HOST_URL="http://${SONAR_HOST}" \
    -e SONAR_LOGIN="${SONAR_TOKEN}" \
    -v "${REPO}:/usr/src" \
    sonarsource/sonar-scanner-cli -Dproject.settings=./sonar-project.properties
