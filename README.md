
This repo is the easiest way to start with Airflow local development on your machine. The docker container is 100 % Official Airflow Docker image with no extra build steps. 
I have modified the .devcontainer folder so that Airflow starts up automatically nice and easy for you. 

# MANDATORY DEPENDENCIES

+ [Docker Desktop](https://www.docker.com/products/docker-desktop/)
+ [Vscode](https://code.visualstudio.com/)
+ [Remote - Containers extension](https://code.visualstudio.com/docs/remote/containers-tutorial)

# I ALSO USE THIS  

+ [Windows SubSystem for linux](https://docs.microsoft.com/en-us/windows/wsl/install) 
+ [Ubuntu for wsl](https://ubuntu.com/wsl)
+ [Docker Desktop WSL2 backend](https://docs.docker.com/desktop/windows/wsl/)


# STEPS TO ACTIVATE 

1. Open vscode and open this repo
2. Open vscode command window, choose command "Remote Containers: Rebuild and Reopen in Container"
3. After some time 
     + Airflow webserver is accessible on http://localhost:8080/
     + You can add dags to the root of this folder and they will be accessible in the UI in 30 seconds. 
     + Enjoy :)