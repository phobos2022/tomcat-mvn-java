FROM tomcat:latest
RUN apt update -y && \
    apt install maven git -y -q 

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello
RUN mvn package
RUN cd target
RUN cp -r hello-1.0.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]








