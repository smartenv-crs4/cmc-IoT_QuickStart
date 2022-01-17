# cmc-IoT_QuickStart

This quick start tool allows you to start the entire CMC stack and the IoT domain microservice called CMC-IoT. It is therefore responsible for the run of basic microservices such as CMC-Auth, CMC-User, CMC-App, which are essential to interact and use the CMC-IoT services. It will always be the task of this tool to define and configure the minimum and essential set of access rules through tokens between the various microservices. Further access rules or any changes can be configured through the CMC-Auth web interface or through its API.


**dependency:**
In order to start this quick start tool it is necessary to use docker engine and compose

**How to start microservices:** 

1. open a shell 
2. Create a folder 
3. Go into new Folder
4. type sh setup.sh