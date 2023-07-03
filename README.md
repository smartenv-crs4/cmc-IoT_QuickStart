# cmc-IoT_QuickStart

This quickstart tool allows you to start the entire CMC stack and the IoT domain microservice, CMC-IoT. It is therefore responsible for running the core microservices CMC-Auth, CMC-User, CMC-App, which are essential to execute the CMC-IoT service. This tool also defines the minimum set of access rules by means of tokens among the various microservices. Further access rules or any changes can be configured through the CMC-Auth web interface or its API.


**dependency:**
The only prerequisite for running this quickstart tool is Docker engine and Docker Compose.

**How to start microservices:** 

1. Open a shell 
2. Clone this repository
3. Go to repo working directory
4. Edit .env file setting the IP of your machine
5. Launch setup.sh script
