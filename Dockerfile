FROM andreptb/maven:3.3.9-jdk8-alpine

COPY ./dst-root-ca-x3.cer /

RUN keytool -import -alias dst-root-ca-x3 -storepass changeit -keystore /usr/lib/jvm/default-jvm/jre/lib/security/cacerts -file /dst-root-ca-x3.cer -noprompt
