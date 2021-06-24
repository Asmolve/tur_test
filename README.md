Тестовые данные:
   - добавить страну, регион может кто угодно, без переадрессации на авторизацию/без проверки аутентификации
   - SQL/JS вставки можно сделать, но они не представляют угрозы

Составить SQL запрос (без использования его в проекте) для получения количества турбаз в каждой географической сущности (страна, регион, город).
   By city:
   select city_name, count(city_name) from cities left join campsites c on cities.id = c.city_id where city_name='Toronto';
   
   By region:
   select region_name, count(region_name) from regions left join cities c on regions.id = c.region_id left join campsites c2 on c.id = c2.city_id where region_name = 'Chiba';
   
   By country:
   select country_name, count(country_name) from countries left join regions r on countries.id = r.country_id left join cities c on r.id = c.region_id left join campsites c2 on c.id = c2.city_id where country_name='Россия';

В ветке dev в db присутствует файл development.sqlite3, содержащий некоторые записи - в целях проверки работы + SQL команды написаны под него


Первая часть:
Цель: сделать простейшую админку для управления турбазами.

Задачи:
1) Продумать атрибуты для следующих сущностей:
   -страна
   -регион
   -город
   -турбаза
   Количество атрибутов должно быть минимально необходимым для каждой сущности.

2) Продумать интерфейс для работы с этими сущностями.
   Учитывать то, что в будущем количество атрибутов может увеличиваться (теоретически).

3) Продумать связи между сущностями, так, чтобы модели было удобно использовать.
   (например, получить все турбазы данного региона).

4) Сделать возможность редактирования, удаления, добавления, просмотр (CRUD) всех записей.

5) Сделать страницу просмотра турбаз (тут надо подумать как это сделать удобно,
   например можно выводить по регионам, или просто список с указанием региона )

Авторизацию и аутентификацию делать необязательно, редактировать записи могут все.

Технические требования:
- Rails 6;
- проект должен содержать в себе git репозиторий (нужно делать атомарные коммиты);
- СУБД на выбор (sqlite, postgresql, mysql, etc.,);
- предоставить тестовые данные (крайне нежелательна ручная генерация);
- для разметки использовать css фреймворк (bootstrap, purecss etc.,);
- деплой на heroku.

Приветствуется:
- использование JavaScript MVC фреймворков (например angular, react etc.,);
- минимум перезагрузок страниц;
- использование фабрик для генерации тестовых данных;
- тесты (RSpec).

Перед началом выполнения оценить сроки на реализацию задачи и выслать их на почту.

Вторая часть:
Цель: Составить SQL запрос (без использования его в проекте) для получения количества турбаз в каждой географической сущности (страна, регион, город).

By city:
select city_name, count(city_name) from cities left join campsites c on cities.id = c.city_id where city_name='Toronto';

By region:
select region_name, count(region_name) from regions left join cities c on regions.id = c.region_id left join campsites c2 on c.id = c2.city_id where region_name = 'Chiba';

By country:
select country_name, count(country_name) from countries left join regions r on countries.id = r.country_id left join cities c on r.id = c.region_id left join campsites c2 on c.id = c2.city_id where country_name='Россия';


Пример результата запроса:
—-----------------------------
Россия 6
Астраханская область 2
Волгогрдаска область 4
Астрахань 2
Волгоград 3
Волжский 1
—-----------------------------

SQL запрос должно быть возможно применить на сгенерированной базе из первой части.

