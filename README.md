# README

Новость

Представляет собой объект новости и должен содержать следующую информацию:

· Заголовок

· Анонс

· Текст

· Статус (опубликована/не опубликована)

Пользователь

Содержит в себе как минимум информацию о конкретном пользователе, а именно:

· Логин

· Пароль

· ФИО

· Подпись

Функции:

· Может создавать новость

· Может обновлять/удалять свою новость

· Может добавлять новость в избранное

Функции каталога

Взаимодействие с пользователем происходит посредством HTTP запросов к API серверу. Все ответы представляют собой JSON объекты.

Сервер реализует следующие методы:

· только аутентифицированный пользователь может создавать/обновлять

· выдача всех новостей конкретного автора

· выдача списка авторов

· выдача списка новостей

· показывать запрошенную

· выдача всех непрочитанных пользователем новостей

Задание

Формат маршрутов для доступа к методам, а также формат ответа и запросов мы предоставляем Вам реализовать и выбрать самим.

1. Спроектировать БД

2. Реализовать API согласно ТЗ

3. Реализовать аутентификацию в АПИ (регистрацию можно не делать)

4. Покрыть код тестами

Используемые технологии

При выполнении задания требуется использовать следующие технологии:

· Ruby ~> 2.5

· Rails 5

· RSpec

· БД Postgres
