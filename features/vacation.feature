Feature: Создать отпуск
    Т.к. возможно запланировать отпуск
    Как пользователь
    Я хочу создавать отпуск

    Scenario: Создания отпуска
        Given am on the Calendar home page
        And I have 28 days for vacation
        When I press "Запланировать отпуск"
        Then I should see Add vacation page


