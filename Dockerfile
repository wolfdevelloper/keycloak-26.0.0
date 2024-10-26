# Use a imagem base do Keycloak
FROM quay.io/keycloak/keycloak:latest

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

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]

CMD ["start", "--hostname-strict=false"]


