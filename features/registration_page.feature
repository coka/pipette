Feature: Registration page

  Scenario: Accessing the registration page
    Given I am on the homepage
    And I am not signed in
    When I click on the "Register" link
    Then I should be on the registration page
