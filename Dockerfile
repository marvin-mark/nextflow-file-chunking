FROM openjdk:11
COPY environment.yml .

WORKDIR "/opt"

COPY jar/genomic-utils.jar genomic-utils.jar

CMD ["java", "-jar", "/genomic-utils"]