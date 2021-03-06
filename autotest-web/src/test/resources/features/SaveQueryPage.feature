#language: ru
@helpdesk

Функционал: Сохранение поискового запроса

  Сценарий:
  - Открытие страницы at-sandbox.workbench.lanit.ru
  - прохождение авторизации
  - поиск созданного тикета
  - сохранение запроса
  - проверка сохранения запроса в системе

    * открыть url "https://at-sandbox.workbench.lanit.ru/"
    * инициализация страницы "HelpdeskMainPage"

    # авторизация
    * на странице имеется элемент "кнопка логина"
    * кликнуть на элемент "кнопка логина"
    * инициализация страницы "HelpdeskAuthPage"
    * ввести в поле "поле ввода логина" значение "admin"
    * ввести в поле "поле ввода пароля" значение "adminat"
    * кликнуть на элемент "кнопка авторизации"

    # поиск тикета
    * инициализация страницы "HelpdeskTicketsPage"
    * ввести в поле "поле поиска" значение "Errors in"
    * кликнуть на элемент "кнопка поиска"
    * на странице имеется элемент "заголовок найденного тикета"

    # сохранение запроса
    * проскроллить страницу до элемента "кнопка сохранения поискового запроса"
    * кликнуть на элемент "кнопка сохранения поискового запроса"
    * подождать появления элемента "поле ввода имени поискового запроса" в течение 2 секунд
    * на странице имеется элемент "поле ввода имени поискового запроса"
    * ввести в поле "поле ввода имени поискового запроса" значение "Errors in"
    * кликнуть на элемент "кнопка подтверждения сохранения поискового запроса"

    # проверка, что запрос сохранился в системе
    * инициализация страницы "HelpdeskMainPage"
    * на странице имеется элемент "меню сохраненных запросов"
    * кликнуть на элемент "меню сохраненных запросов"
    * подождать появления элемента "элемент сохраненного запроса" в течение 3 секунд
    * на странице имеется элемент "элемент сохраненного запроса"

