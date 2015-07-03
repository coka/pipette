Feature: Homepage

  Scenario: Viewing the homepage as a visitor
    Given I am on the homepage
    And I am not signed in
    Then I should see the "Register" link
    And I should see the "Sign in" link

  Scenario: Viewing the homepage as a user
    Given I am on the homepage
    And I am signed in
    Then I should see the "Sign out" link

  Scenario: Registration
    Given I am on the homepage
    And I am not signed in
    When I register
    Then I should see a registration confirmation

  Scenario: Signing in
    Given I am on the homepage
    When I sign in
    Then I should see a sign in confirmation

  Scenario: Signing out
    Given I am on the homepage
    And I am signed in
    When I click on the "Sign out" link
    Then I should see a sign out confirmation
