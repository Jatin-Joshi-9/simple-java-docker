#pull a Base image which gives all requires tools and libraries 

From openjdk:17-jdk-alpine

#Create a directory where the source application code files will be stored
WORKDIR /app

#Copy the files or data from source machine to containers
  	
COPY /src/Main.java /app/Main.java

#Compile the application code

RUN javac Main.java

#Run the application 
CMD ["java","Main"]
