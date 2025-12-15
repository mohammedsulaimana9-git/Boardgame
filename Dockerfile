FROM maven:3.8.1-amazoncorretto-11

LABEL author="Sulaiman" project="Boardgame"

WORKDIR /Bgame 

COPY . . 

RUN mvn package 

EXPOSE 8080

CMD ["sh" , "-c","java -jar target/*.jar"]