FROM melodyn/base-image:latest

# openjdk:15-oracle

RUN curl -L https://github.com/checkstyle/checkstyle/releases/download/checkstyle-8.31/checkstyle-8.31-all.jar > /opt/checkstyle.jar
RUN chmod 777 /opt/checkstyle.jar

RUN curl -L https://repo1.maven.org/maven2/org/assertj/assertj-core/3.15.0/assertj-core-3.15.0.jar > /opt/assertj.jar
RUN chmod 777 /opt/assertj.jar

WORKDIR /exercises-java

COPY --from=melodyn/base-image:latest /tmp/basics/common/* ./
COPY . .

