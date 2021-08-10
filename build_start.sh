git clone https://github.com/clebermasters/sonarqube-javascript.git 
cd sonarqube-javascript
./buid.sh &
start-sonar.sh

echo "Access http://localhost:9000"

echo "Create a Token --> http://localhost:9000/account/security/"

echo "Replace the token on SONAR_TOKEN from scan.sh"

echo "run scan.sh"

echo "Check the report on http://localhost:9000"