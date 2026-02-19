#1 Base image (OS)
FROM eclipse-temurin:17-jdk-alpine

#2 working dicrectory for the app
WORKDIR /app

#3 code copy from host to conatiner(working directory)
COPY src/Main.java /app/Main.java

COPY quotes.txt quotes.txt

#4 Run the command to install library or to compile code
RUN javac Main.java

#5 EXPOSE the port
EXPOSE 8000

#6 Serve the app /keep it running
CMD ["java","Main"] 

