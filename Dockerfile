FROM quay.io/keycloak/keycloak:26.0.0

ARG ENV=dev  # Padrão para desenvolvimento

ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=senha
ENV KC_DB=dev-file
ENV JAVA_OPTS="-Xmx256m -Xss512k -Djava.awt.headless=true"
ENV QUARKUS_LOG_LEVEL=DEBUG

EXPOSE 8080

ENTRYPOINT ["/bin/sh", "-c", "/opt/keycloak/bin/kc.sh start-dev --http-port=$PORT"]
CMD /opt/keycloak/bin/kc.sh start-dev --http-port=${PORT}

