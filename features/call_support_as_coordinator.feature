Feature: Validate the user is able to navigate to callme

  Coordinators must be able to
  Navigate to callme site
  So the user is able to communicate to support

  Scenario: Navigate to callme site
    When Coordinator logs in
    And I navigate to help view
    And I click the Talk to Amco button
    Then I should be redirected to callme site
