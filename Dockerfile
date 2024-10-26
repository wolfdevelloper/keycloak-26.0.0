FROM quay.io/keycloak/keycloak:latest

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=senha

EXPOSE 8080

ENTRYPOINT ["start-dev"]
