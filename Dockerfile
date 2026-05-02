FROM              maven
RUN               mkdir /app
WORKDIR           /app
COPY              ./ /app
RUN               mvn package; mv target/shipping-1.0.jar shipping.jar
ADD               newrelic.jar /app
ADD               newrelic.yml /app
ENTRYPOINT        ["bash", "run.sh"]
