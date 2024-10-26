# Dockerfile

FROM quay.io/keycloak/keycloak:latest

ARG ENV=dev  # Padrão para desenvolvimento

ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=senha
ENV KC_DB=dev-file

EXPOSE 8080

CMD ["start"]
