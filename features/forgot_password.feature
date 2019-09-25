Feature: Forgot Password

Background:
    Given I visit the landing page


Scenario:  Email can't be blank [Sad Path]
    When I click "Login"
    And I should see "Remember me"
    And I click "Forgot your password?"
    And I should see "Forgot your password?"
    And I click "Send me reset password instructions"
    Then I should see "1 error prohibited this user from being saved:"

Scenario: Email must be registered [Sad Path]
    When I click "Login"
    And I should see "Remember me"
    And I click "Forgot your password?"
    And I should see "Forgot your password?"
    And I fill "Email" with "taken@gmail.com"
    Then I should see "1 error prohibited this user from being saved:"

#Happy path Enter email and see that instructions has been sent.