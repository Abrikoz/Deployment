1 Шаг 

Установите фреймворк: Maven 
Инструмент разработки: JDK 23
БД: MySQL

2 Шаг 

Распакуйте приложение из rar архива
Открываете CMD(командная строка)
Прописываете Где рассположено приложение пример: cd "C:\Пользователь\Аноним\OneDrive\Рабочий стол\myapp\myapp\myapp"
cd и \myapp\myapp\myapp оставлять как в примере

3 Шаг

По данному пути перейти: myapp\myapp\src\main\resources

Будет файл с названием application

Содержимое файла
[spring.datasource.url=jdbc:mysql://localhost:3306/your_database_name
spring.datasource.username=your_username
spring.datasource.password=your_password
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.database-platform=org.hibernate.dialect.MySQLDialect
logging.level.org.hibernate=DEBUG
logging.level.org.springframework=DEBUG]
 
В your_username и в your_password внести данные в соответствии с вашей базой данных MySQL.

Убедитесь, что база данных существует и доступ к ней

4 Шаг 

Выполните следующие команды, чтобы удалить кеши и выполнить повторную сборку
mvn clean
mvn dependency:purge-local-repository
mvn install


5 Шаг 

Запускаете приложение следующей командой
mvn spring-boot:run





