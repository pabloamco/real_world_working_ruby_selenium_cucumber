Feature: Login to AS

  As coordinator
  I must be able to
  Login to Academic Solution
	
  Scenario: Login to Academic Solution with email
    When I login with email
    Then I must be on the teachers view with email

  Scenario: Login to Academic Solution with username
    When I login with username
    Then I must be on the teachers view with username

  Scenario: Login to Academic Solution with google account
    When I login with google account
    Then I must be on the teachers view with google account
