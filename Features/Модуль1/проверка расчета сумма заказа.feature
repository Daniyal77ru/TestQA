﻿#language: ru

@tree

Функционал: проверка суммы Заказа

Как Менеджер по продажам я хочу
создание документа заказ 
чтобы проверить сумму

Сценарий: создание заказа и проверка суммы
* Открытие формы создания документа
	И я закрыл все окна клиентского приложения
	Когда В панели разделов я выбираю 'Продажи'
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
* Заполнение товарной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Торт '
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '250'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка суммы на равенство в табличной части
	Тогда таблица "Товары" содержит строки:
		| 'Сумма'    |
		| '2 500,00' |
	
		
