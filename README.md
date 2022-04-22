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

Part 2 - GitHub Actions and DockerHub
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
	- The only thing that would need changed is the repository name

Part 3 - Deployment

- Container restart script
    - What it does?
    
      The script will kill all of the  other old versions of the container, as well as  any unused containers or images. The script will also get updated images and run the container on port 80.

- Webhook task defintion file
    - What it does?
    
      It will define the files the webhook needs to call, and  use the webnook you created in docker, and use that id to call the server. It will also call on push-restart.
     

- Setting up a webhook on the server

    - How you created you own listener:
    
                    sudo ./pull-restart.sh -hooks redeploy.json
                    
                    webhook -hooks path/to/webhook-config.json -verbose
                
    - How you installed and are running the webhook on Github?
    
      I installed webhook by sudo apt-get insall webhook and using the link from github. 
     
      
   - Setting up a notifier in GitHub or DockerHub
   
      To be notified in Github, I went into settings in the repo and went to the webhooks tab, and I entered the url I made for Dockerhub and put "notify me on everything."


Part 4 - Diagramming 

![Diagram](https://user-images.githubusercontent.com/70331126/164571361-1072306d-1c87-4c08-8ae2-55da99045ee1.png)

