# Крок 1: Базовий образ з JRE
FROM eclipse-temurin:17-jre-jammy

# Робоча директорія всередині контейнера
WORKDIR /app

# Копіюємо зібраний jar файл у контейнер
COPY target/cicd-demo-app-1.0-SNAPSHOT.jar app.jar

# Команда для запуску додатка
ENTRYPOINT ["java", "-jar", "app.jar"]