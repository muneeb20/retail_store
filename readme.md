# Retail Store Project

### Framework and Tools
Spring Boot framework is used a rest framework for REST API's. Swagger ui is used for api documentation of request and 
response.

### Assumptions
Based on the time constraints I did not setup any database and expecting user information to be part of the original
 request. Based on that user information code decide which type of discount is applied.
 
### Implementation
MVC is used properly with Controller and Service layer. Since we don't have any kind of caching or database access DAO 
layer is not there. Lambok is used for entity request and response models. Requests comes to controlled and after proper
 validation it is passed to service layer which decided based on input using polymorphism what kind of discount is valid
 to a user.
 
### Testing
Proper unit testing is integrated so we can have no regression and unbreakable deployments. We can setup unit test even
in the deployment pipelines using jenkins.

#### Points to follow to test on local
1. Install maven on your machine
2. Go to project directory downloads
3. mvn clean install 

It will show something like that Tests run: 1

##Testing
For testing I have used unit test for spring boot with https://www.baeldung.com/jacoco for coverage tests.

### Deployment
We are using docker to build and deploy our project. Docker file is already setup with the name Dockerfile.

Run the project with below commands

1. docker build -t retail-app .
2. docker run -p 8090:8080 retail-app

Go to http://127.0.0.1:8090/swagger-ui.html to see the api docs and project.


### UML Diagram
You can find uml diagram with the name retail_class_diagram.png in main directory.

