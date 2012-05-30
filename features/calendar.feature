Feature: При выборе месяца отображать календарь за месяц
    Как пользователь
    Так что я могу посмотреть отпука
    Выбрав месяц я могу видеть отпуска других пользователей

    Background: Залогинен и на главной странице
        #TODO: Given I am logined as User Userov
        #And I am on the Calendar home page
        Given I am on the Calendar home page

    Scenario: Видеть заголовок
        When I am on the yer page
        Then I should see "Календарь"

    Scenario: Видеть годовой календарь
        When I am on the year page
        Then I should see all months in the year
        And I should see '2012' in bar

    Scenario: Видеть календарь за месяц
        When I am on the month page
        And I select 'Май' in bar
        Then I should add all days in month
        And I should see Май in bar

    Scenario: Видеть пользователей в ячейке месяца
        #        Then I should see "User Userov" in May month

    Scenario: Выбрать месяц
        When I follow "Май"
        Then I should be on the month page



