cd app

rem From now on, we need to have Docker daemon running
docker build . -t nighogg-datatype-cs3244/node-web-app

rem Note that we use the port 3000, as implied in the Assignment paper
docker run --name A1p1 -p 3000:8080 -d --rm nighogg-datatype-cs3244/node-web-app 

set /p DUMMY=Hit ENTER to stop the program

docker container stop A1p1