# cicd-3120-markpeterangelo
Part 1 - Dockerize it

- Create README.md in main folder of your repo that details the following:
- Project Overview
- Run Project Locally
	- how you installed docker + dependencies (WSL2, for example)
- sudo apt install docker.io
	- how to build the container
- to build the container I did docker build -t my-apache2
	- how to run the container
- sudo docker run --rm -it -p 8080:80 ubuntu
- to view the project you open a browser and go to ip and port
- localhost:8080
