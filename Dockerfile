FROM tomcat:latest
RUN apt update -y && \
    apt install maven git -y -q 
WORKDIR /tmp
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /tmp/boxfuse-sample-java-war-hello/target
WORKDIR /tmp
RUN rm -rf boxfuse-sample-java-war-hello
RUN cp -r hello-1.0.war /usr/local/tomcat/webapps









