cd nginx-sample

rem From now on, we need to have Docker daemon running
docker build . -t nighogg-datatype-cs3244/mynginx_image1

rem Note that we *only* open port 80, and the container destroys itself after ending
docker run --name mynginx3 -p 80:80 -d --rm nighogg-datatype-cs3244/mynginx_image1

set /p DUMMY=Hit ENTER to stop the program

docker container stop mynginx3