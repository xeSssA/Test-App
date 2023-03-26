## Сервис-театра

**Тестовое задание**: создание api-сервиса для заполнения расписания маленького театра

**Конфигурация сервиса:**
````
docker-compose build
docker-compose run --rm app bash
rails db:create
rails db:migrate
rails db:seed
````

**Запуск приложения:**
````
docker-compose up
````
### Тестировать через Postman или Curl  
Ручки для теста:  
get - api/v1/performances  
post - api/v1/performances  
delete - api/v1/performances/:id




