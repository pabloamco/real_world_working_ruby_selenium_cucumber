Feature: Logout from AS

  As coordinator user
  I'm be able to logout
  From Academic Solution

  Scenario: Logout from Academic Solution
    When I login
    And I navigate to settings
    Then I logout
