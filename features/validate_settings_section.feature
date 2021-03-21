Feature: Validate settings view

  As coordinator
  I must be able to consult my
  account name and school also 
  I must be able to change the laguage

  Scenario: Validate the account name in settings view
    When I login to validate the account name
    And I click on settings
    Then I must be able to see my account name

  Scenario: Validate the school name in settings view
    When I login to validate the school name
    And I click on settings
    Then I must be able to see the school name

  Scenario: Switch app the language 
    When I login to switch the app language
    And I click on settings
    And I switch the languague
    Then I should see the app in English
