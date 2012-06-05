Feature: Идентификация пользователей
    Как пользователь
    для того чтобы заполнять информацию от своего имени
    и никто постторонний не мог её видеть

    Scenario: Должно перекинуть на страницу авторизации
        When I go to the Calendar home page
        Then I should be on the signin page

    Scenario: Должна быть возможность регистрации
        When I go to the signup page
        Then I should see "Регистрация"
        And page title should be "Регистрация"
        And I should see "Логин"
        And I should see "Почта"
        And I should see "Пароль"

    Scenario: Зарегистрироваться
        When I go to the signup page
        And I fill in "user_login" with "tester"
        And I fill in "user_email" with "test@example.com"
        And I fill in "user_password" with "pass"
        And I press "Создать"
        Then I should see "Пользователь успешно создан"


    Scenario: С правельным имененм пользователя
        Given a valid user
        When I go to the signin page
        And I fill in "Логин" with "tester"
        And I fill in "Пароль" with "pass"
        And I press "Воити"
        Then I should see "Вход успешен"
        And I should see "tester"

    Scenario: С неправельным имененм
        Given an invalid user
        When I go to the signin page
        And I fill in "Логин" with "bad"
        And I fill in "Пароль" with "pass"
        And I press "Воити"
        Then I should see "Не удалось воити"
        And I should see "Вход"

