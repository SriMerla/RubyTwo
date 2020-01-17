Feature: Login in to the website puppyfind

  Scenario: Login with valid credentials
    Given user is on website puppyfind
    When user enters valid credentials
    Then user see login confirmation message

