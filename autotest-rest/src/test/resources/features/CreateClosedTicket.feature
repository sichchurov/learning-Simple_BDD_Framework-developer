# language: ru
@test

Функционал: тестирование сервиса HelpDesk.
  1. Создание тикета со статуом "Закрыт", с высоким приоритетом, POST запросом с телом из json файла, значения которого заполняем сгенерированными значениями
  2. Негативная проверка: перевода статуса тикета из "Закрыт" в "Открыт

  Сценарий: создание тикета

  # Первая часть теста - Создание тикета. Эти данные подставятся в тело запроса в шаблон тела файла createUser.json
        # Генерится рандомная страка по маске
        # E - Английская буква,
        # R - русская буква,
        # D - цифра. Остальные символы игнорятся
        # Условна дана строка TEST_EEE_DDD_RRR - снегерится примерно такая - TEST_QRG_904_ЙЦУ

    * сгенерировать переменные
      | title           | EEEEEEEE             |
      | submitter_email | EEEEEEEE@EEEEEEEE.EE |
      | status          | 4                    |
      | description     | EEEEEEEE             |
      | priority        | 1                    |
      | queue           | 1                    |
      | username        | admin                |
      | password        | adminat              |


    # пройти авторизацию
    * создать запрос
      | method | path      | body      |
      | POST   | api/login | user.json |

    * добавить header
      | Content-Type | application/json |

    * отправить запрос

    * статус код 200

    * извлечь данные
      | token | $.token |

    # создание тикета
    * создать запрос
      | method | path        | body              |
      | POST   | api/tickets | createTicket.json |
    # добавить header
    * добавить header
      | Content-Type | application/json |

    * отправить запрос

    * статус код 201

    * извлечь данные
      | ticket_id     | $.id     |
      | ticket_status | $.status |

    * сравнить значения
      | ${id} | != | null |

    # изменение данных
    * создать запрос
      | method | path                     | body        |
      | PATCH  | api/tickets/${ticket_id} | status.json |

    И пройти авторизацию

    * добавить header
      | accept       | application/json |
      | Content-Type | application/json |

    * отправить запрос

    * извлечь данные
      | updated_status | $.status |

    * статус код 422

