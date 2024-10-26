FROM quay.io/keycloak/keycloak:latest

# Define o nome de usuário e a senha do administrador
ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=senha

# Define a configuração do banco de dados H2
ENV KC_DB=H2

# Expõe a porta padrão do Keycloak
EXPOSE 8080

# Comando para iniciar o Keycloak
CMD ["start"]
