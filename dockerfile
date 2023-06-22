FROM mysql:8.0

# Variables d'environnement pour la configuration de la base de données
ENV MYSQL_ROOT_PASSWORD bob
ENV MYSQL_DATABASE bob
ENV MYSQL_USER bob
ENV MYSQL_PASSWORD bob

# Copie des scripts SQL pour créer les tables et insérer des données
COPY init.sql /docker-entrypoint-initdb.d/

# Expose le port par défaut de MySQL (3306)
EXPOSE 3306
