# Dockerfile

FROM quay.io/keycloak/keycloak:latest

ARG ENV=dev  # Padrão para desenvolvimento

ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=senha
ENV KC_DB=dev-file
ENV JAVA_OPTS="-Xmx300m -Xss512k -Djava.awt.headless=true"

EXPOSE 8080

CMD ["kc.sh", "start"]

