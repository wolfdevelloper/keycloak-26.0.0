FROM quay.io/keycloak/keycloak:latest

# Defina o banco de dados como H2
ENV KC_DB=h2
ENV KC_HOSTNAME_STRICT=false

# Configura o usuário administrador do Keycloak com variáveis de ambiente
ENV KEYCLOAK_ADMIN=$KEYCLOAK_ADMIN
ENV KEYCLOAK_ADMIN_PASSWORD=$KEYCLOAK_ADMIN_PASSWORD

# Inicialize o Keycloak
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--hostname-strict=false"]
