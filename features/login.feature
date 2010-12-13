Feature: Login
  In order to gain access to the system
  as a user
  I want to login

  Background: 
    Given I have a user "diego@test.com"

  Scenario: Non logged in user sees login control
    Given I am on the home page
    Then I should see "username"
    And I should see "password"

  Scenario: Logged in user sees username
    Given I am on the home page
    When I fill in "username" with "diego@test.com"
    And I fill in "password" with "password"
    Then I should see "diego@test.com"
    And I should see "Log out"
