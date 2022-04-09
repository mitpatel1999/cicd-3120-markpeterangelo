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

Part 2 -
- Creating proccess:
	- Go to Dockerhub in browser.
	-  Sign into your DockerHub
	- Select create repo
	- Add name & description
	- Make sure it's on public and select create
- Allow DockerHub authentication via CLI Dockerhub credentials:
	- Go to settings and click on security
	- Hit the  "New Access Token" button and select read, write, and delete
	- After you create your new token, save the key in a good and secure spot
- Configure GitHub secrets:
	- open the Docker Hub account settings and go to "security", and click on secrets
	- You can create your secrets by making  one secret called "DOCKER_USERNAME" with your docker username, and the other "DOCKER_PASSSWORD" with the contents of the token you created.
- Configure Github Workflow:
	- Add your docker secrets and your image name


