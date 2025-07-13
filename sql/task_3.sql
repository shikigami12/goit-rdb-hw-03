-- Завдання 3: Унікальні значення category_id та price з сортуванням за спаданням

-- Вибираємо унікальні комбінації category_id та price, сортуємо за ціною за спаданням і обмежуємо до 10 рядків
SELECT DISTINCT category_id, price FROM products ORDER BY price DESC LIMIT 10;