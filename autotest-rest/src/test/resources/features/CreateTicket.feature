# language: ru
@test

Функционал: тестирование сервиса HelpDesk.
  1. Создание тикета с высоким приоритетом POST запросом с телом из json файла, значения которого заполняем сгенерированными значениями
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
      | status          | 1                    |
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
      | ticket_id          | $.id              |
      | ticket_title       | $.title           |
      | ticket_email       | $.submitter_email |
      | ticket_status      | $.status          |
      | ticket_description | $.description     |
      | ticket_priority    | $.priority        |
      | ticket_queue       | $.queue           |

    * сравнить значения
      | ${id} | != | null |

    # получить данные
    * создать запрос
      | method | path                     |
      | GET    | api/tickets/${ticket_id} |

    И пройти авторизацию

    * добавить header
      | accept       | application/json |

    * отправить запрос

    * статус код 200

    * сравнить значения
      | ${title}           | == | ${ticket_title}       |
      | ${submitter_email} | == | ${ticket_email}       |
      | ${status}          | == | ${ticket_status}      |
      | ${description}     | == | ${ticket_description} |
      | ${priority}        | == | ${ticket_priority}    |
      | ${queue}           | == | ${ticket_queue}       |
