#!/bin/bash
echo "Adarsh-task"
echo $BUILD_ID 
cd source-code
mvn clean package -DskipTests

if [ $? -ne 0 ]; then
  exit 1
fi

cp manifest.yml ../cf-deploy-files
cp target/hello-world-0.0.1-SNAPSHOT.jar ../cf-deploy-files
