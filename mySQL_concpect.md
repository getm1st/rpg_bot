# MySQL: Полный конспект по основам

## 1. Введение в MySQL
MySQL - это система управления базами данных (СУБД), основанная на языке SQL.

## 2. Основные команды SQL
### Создание базы данных
```sql
CREATE DATABASE my_database;
```

### Удаление базы данных
```sql
DROP DATABASE my_database;
```

### Использование базы данных
```sql
USE my_database;
```

## 3. Работа с таблицами
### Создание таблицы
```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT
);
```

### Удаление таблицы
```sql
DROP TABLE users;
```

### Очистка таблицы
```sql
TRUNCATE TABLE users;
```

## 4. Операции с данными
### Вставка данных
```sql
INSERT INTO users (name, age) VALUES ('Alice', 25);
```

### Обновление данных
```sql
UPDATE users SET age = 26 WHERE name = 'Alice';
```

### Удаление данных
```sql
DELETE FROM users WHERE name = 'Alice';
```

## 5. Чтение данных
### Выборка всех данных
```sql
SELECT * FROM users;
```

### Фильтрация данных
```sql
SELECT * FROM users WHERE age > 20;
```

### Упорядочивание данных
```sql
SELECT * FROM users ORDER BY age DESC;
```

## 6. Связи между таблицами
### Создание связи (FOREIGN KEY)
```sql
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
```

## 7. Операторы JOIN
### INNER JOIN
```sql
SELECT users.name, orders.id FROM users
INNER JOIN orders ON users.id = orders.user_id;
```

### LEFT JOIN
```sql
SELECT users.name, orders.id FROM users
LEFT JOIN orders ON users.id = orders.user_id;
```

### RIGHT JOIN
```sql
SELECT users.name, orders.id FROM users
RIGHT JOIN orders ON users.id = orders.user_id;
```

## 8. Группировка и агрегатные функции
### Группировка с GROUP BY
```sql
SELECT age, COUNT(*) FROM users GROUP BY age;
```

### Агрегатные функции
```sql
SELECT AVG(age) FROM users;
SELECT MAX(age) FROM users;
SELECT MIN(age) FROM users;
```

## 9. Ограничение количества результатов
```sql
SELECT * FROM users LIMIT 5;
```

## 10. Индексы
### Создание индекса
```sql
CREATE INDEX idx_name ON users(name);
```

### Удаление индекса
```sql
DROP INDEX idx_name ON users;
```

## 11. Подзапросы
```sql
SELECT name FROM users WHERE id IN (SELECT user_id FROM orders);
```

## 12. Представления (VIEW)
```sql
CREATE VIEW user_orders AS
SELECT users.name, orders.id FROM users
JOIN orders ON users.id = orders.user_id;
```

## 13. Транзакции
```sql
START TRANSACTION;
UPDATE users SET age = 30 WHERE id = 1;
COMMIT;
```

## 14. Пользователи и права доступа
### Создание пользователя
```sql
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'password';
```

### Назначение прав
```sql
GRANT ALL PRIVILEGES ON my_database.* TO 'new_user'@'localhost';
```

### Отзыв прав
```sql
REVOKE ALL PRIVILEGES ON my_database.* FROM 'new_user'@'localhost';
```

### Удаление пользователя
```sql
DROP USER 'new_user'@'localhost';
```

## Источники
[Видео-урок](https://www.youtube.com/watch?v=5OdVJbNCSso&t=708s)

