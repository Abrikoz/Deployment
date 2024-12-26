Установка и запуск

Шаг 1. Установите зависимости

1. Java 11 или выше – установите JDK и настройте `JAVA_HOME`.
2. Maven – скачайте и установите Apache Maven.
3. База данных:
   - Установите MySQL.
   - Создайте базу данных, например, monitoring_db.

 Шаг 2. Скачайте проект

Склонируйте проект на своё устройство:

bash
git clone <ссылка-на-репозиторий>
cd <директория-проекта>


Шаг 3. Настройте параметры

В папке src/main/resources настройте файл application.properties:

properties
 Настройки подключения к базе данных
spring.datasource.url=jdbc:mysql://localhost:3306/monitoring_db
spring.datasource.username=ВЫШ_ЛОГИН_БД
spring.datasource.password=ВАШ_ПАРОЛЬ_БД

Генерация схемы
spring.jpa.hibernate.ddl-auto=update
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL5Dialect


Шаг 4. Создайте таблицы

Запустите SQL-запросы, чтобы создать таблицы:

sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('ADMIN', 'USER') DEFAULT 'USER'
);

CREATE TABLE monitored_apps (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    url VARCHAR(500) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE availability_logs (
    id SERIAL PRIMARY KEY,
    app_id INT NOT NULL,
    status ENUM('UP', 'DOWN') NOT NULL,
    error_message VARCHAR(500),
    checked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (app_id) REFERENCES monitored_apps(id) ON DELETE CASCADE
);


Шаг 5. Соберите приложение

Соберите проект с помощью Maven:

bash
mvn clean install


Шаг 6. Запустите проект

Запустите приложение командой:

bash
mvn spring-boot:run

Документация API

После запуска проекта вы можете открыть Swagger-документацию:


http://localhost:8080/swagger-ui.html
