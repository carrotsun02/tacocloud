# 1단계: Maven 빌드
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# 2단계: 실행 이미지
FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /app/target/tacocloud-0.0.1-SNAPSHOT.jar taco.jar
EXPOSE 8085
ENTRYPOINT ["java", "-jar", "taco.jar"]
