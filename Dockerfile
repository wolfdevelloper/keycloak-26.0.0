# Dockerfile

FROM quay.io/keycloak/keycloak:26.0.0

ARG ENV=dev  # Padrão para desenvolvimento

ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=senha
ENV KC_DB=dev-file
ENV JAVA_OPTS="-Xmx256m -Xss512k -Djava.awt.headless=true"

EXPOSE 8080

# Use CMD para iniciar o Keycloak
CMD ["/opt/keycloak/bin/kc.sh", "start-dev"]
