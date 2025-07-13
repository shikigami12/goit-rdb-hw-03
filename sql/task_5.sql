-- Завдання 5: Кількість продуктів та середня ціна по постачальникам

-- Групуємо продукти за постачальниками (supplier_id) та підраховуємо кількість продуктів і середню ціну для кожного постачальника
SELECT supplier_id, COUNT(id) as total, ROUND(AVG(price), 2) as average FROM products GROUP BY supplier_id;