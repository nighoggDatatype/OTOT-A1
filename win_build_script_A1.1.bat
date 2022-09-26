cd app

rem From now on, we need to have Docker daemon running
docker build . -t nighogg-datatype-cs3244/node-web-app

rem Note that we use the port 3000, as implied in the Assignment paper
docker run -it -p 3000:8080 nighogg-datatype-cs3244/node-web-app 
rem Exit the process by inputting CTRL-C

rem Alternatively, we can run the container in detatched mode, but this requires manual stopping
rem `docker run -p 3000:8080 -d nighogg-datatype-cs3244/node-web-app`
rem //TODO: Outline in the report how to manually stop docker containers
rem //      Probably either by manual commands, or by using "Docker Desktop"