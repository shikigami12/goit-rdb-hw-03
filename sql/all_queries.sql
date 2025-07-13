-- Завдання 1: Вибір всіх стовпчиків з таблиці products та вибраних стовпчиків з shippers

-- Вибираємо всі стовпчики з таблиці products
SELECT * FROM products;

-- Вибираємо тільки стовпчики name та phone з таблиці shippers
SELECT name, phone FROM shippers;

-- Завдання 2: Обчислення середнього, максимального та мінімального значення стовпчика price

-- Знаходимо середнє (з округленням до 2 знаків), максимальне та мінімальне значення ціни
SELECT ROUND(AVG(price), 2) as average, MAX(price) as max, MIN(price) as min FROM products;

-- Завдання 3: Унікальні значення category_id та price з сортуванням за спаданням

-- Вибираємо унікальні комбінації category_id та price, сортуємо за ціною за спаданням і обмежуємо до 10 рядків
SELECT DISTINCT category_id, price FROM products ORDER BY price DESC LIMIT 10;

-- Завдання 4: Підрахунок продуктів у ціновому діапазоні від 20 до 100

-- Підраховуємо кількість продуктів, ціна яких більше 20 і менше 100
SELECT COUNT(id) as total FROM products WHERE price > 20 AND price < 100;

-- Завдання 5: Кількість продуктів та середня ціна по постачальникам

-- Групуємо продукти за постачальниками (supplier_id) та підраховуємо кількість продуктів і середню ціну для кожного постачальника
SELECT supplier_id, COUNT(id) as total, ROUND(AVG(price), 2) as average FROM products GROUP BY supplier_id;