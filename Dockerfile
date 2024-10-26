# Use a imagem base do Keycloak
FROM quay.io/keycloak/keycloak:26.0.0 as builder

# Habilitar suporte a health checks e métricas
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Defina argumentos e variáveis de ambiente necessárias
ARG ENV=dev  # Padrão para desenvolvimento

ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=senha
ENV KC_DB=dev-mem
ENV JAVA_OPTS="-Xmx256m -Xss512k -Djava.awt.headless=true"
ENV QUARKUS_LOG_LEVEL=DEBUG

# Adicionar um log para verificar o valor da variável PORT
RUN echo 'Verificando a variável PORT: ${PORT}'

# Configure o ponto de entrada para iniciar o Keycloak
ENTRYPOINT ["/bin/sh", "-c", "echo 'Porta configurada: ${PORT}' && /opt/keycloak/bin/kc.sh start-dev --http-port=${PORT}"]
