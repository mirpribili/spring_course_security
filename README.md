# Spring Security
## Аунтификация - проверка подлинности сравнивая с бд пароль и логин
## Авторизация - проверка разрешений на доступ к ресурсам
### Конфигурация Spring MVC + Spring Security без XML
- add dependency in pom.xml
- add configuration Java class
- Create class for use Dispatcher Servlet
- add TomCat
- create Security Initializer
- add configuration for Spring Security
# Аунтификация - complete
# Авторизация - complete
# Переносим пользователей в BD
- пароль хранится в БД в виде:
  - {алгоритм кодирования} зашифрованный пароль
    - {noop} без шифрования
    - {bcrypt}
# MySQL

    sudo mysql
    sudo systemctl status mysql
    sudo service mysql restart
    show databases;
    use my_db_spring_mvc_aop;
    show tables;
    SELECT * FROM my_db_spring_mvc_aop.employees;

    USE my_db;

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    Поля таблиц БД СТАНДАРТНЫЕ! ПОМЕНЯТЬ == НЕ работает

    CREATE TABLE users (
    username varchar(15),
    password varchar(100),
    enabled tinyint(1),
    PRIMARY KEY (username)
    ) ;
    
    CREATE TABLE authorities (
    username varchar(15),
    authority varchar(25),
    FOREIGN KEY (username) references users(username)
    ) ;
    
    INSERT INTO my_db.users (username, password, enabled)
    VALUES
    ('zaur', '{noop}zaur', 1),
    ('elena', '{noop}elena', 1),
    ('ivan', '{noop}ivan', 1);
    
    INSERT INTO my_db.authorities (username, authority)
    VALUES
    ('zaur', 'ROLE_EMPLOYEE'),
    ('elena', 'ROLE_HR'),
    ('ivan', 'ROLE_HR'),
    ('ivan', 'ROLE_MANAGER');
- 










