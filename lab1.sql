/* Учебная DB - AdventureWorks2017
1. Найти и вывести на экран названия продуктов, их цвет и размер. */

SELECT 
	Name, Color, Size
FROM 
	Production.Product

/* 2. Найти и вывести на экран названия, цвет и размер таких продуктов, у которых
цена более 100. */

SELECT
	Name, Color, Size
FROM
	Production.Product
WHERE
	StandardCost > 100

/* 3. Найти и вывести на экран название, цвет и размер таких продуктов, у которых
цена менее 100 и цвет Black. */

SELECT
	Name, Color, Size
FROM
	Production.Product
WHERE
	StandardCost < 100 AND Color = 'Black'

/* 4. Найти и вывести на экран название, цвет и размер таких продуктов, у которых
цена менее 100 и цвет Black, упорядочив вывод по возрастанию стоимости
продуктов. */

SELECT
	Name, Color, Size
FROM
	Production.Product
WHERE
	StandardCost < 100 AND Color = 'Black'
ORDER BY 
	StandardCost ASC

/* 5. Найти и вывести на экран название и размер первых трех самых дорогих
товаров с цветом Black. */

SELECT TOP 3
	Name, Color, Size, StandardCost
FROM
	Production.Product
WHERE
	Color = 'Black'
ORDER BY 
	StandardCost DESC

/* 6. Найти и вывести на экран название и цвет таких продуктов, для которых
определен и цвет, и размер. */

SELECT
	Name, Color
FROM
	Production.Product
WHERE
	Color IS NOT NULL AND Size IS NOT NULL

/* 7. Найти и вывести на экран не повторяющиеся цвета продуктов, у которых цена
находится в диапазоне от 10 до 50 включительно. */

SELECT DISTINCT
	Color
FROM
	Production.Product
WHERE 
	ListPrice BETWEEN 10 AND 50

/* 8. Найти и вывести на экран все цвета таких продуктов, у которых в имени первая
буква ‘L’ и третья ‘N’. */

SELECT
	Color
FROM
	Production.Product
WHERE 
	Name LIKE 'L_N%'

/* 9. Найти и вывести на экран названия таких продуктов, которых начинаются
либо на букву ‘D’, либо на букву ‘M’, и при этом длина имени – более трех
символов. */

SELECT
	Name
FROM
	Production.Product
WHERE 
	Name LIKE '[DM]%' AND len(Name) > 3

/* 10. Вывести на экран названия продуктов, у которых дата начала продаж – не
позднее 2012 года. */

SELECT
	Name
FROM
	Production.Product
WHERE 
	SellStartDate < '2012'

/* 11. Найти и вывести на экран названия всех подкатегорий товаров. */

SELECT
	Name
FROM
	Production.ProductSubcategory

/* 12. Найти и вывести на экран названия всех категорий товаров. */

SELECT
	Name
FROM
	Production.ProductCategory

/* 13. Найти и вывести на экран имена всех клиентов из таблицы Person, у которых
обращение (Title) указано как «Mr.». */

SELECT
	FirstName
FROM
	Person.Person
WHERE
	Title = 'Mr.'

/* 14. Найти и вывести на экран имена всех клиентов из таблицы Person, для
которых не определено обращение (Title). */

SELECT
	FirstName
FROM
	Person.Person
WHERE
	Title IS NULL
