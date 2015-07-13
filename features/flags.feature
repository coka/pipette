Feature: Flags

  Scenario: Viewing the navbar as a user
    Given I am signed in as a user
    Then I should see my username in the navbar

  Scenario: Viewing the navbar as a user with a flag username
    Given I am signed in as a user with a flag name
    Then I should see my flag in the navbar
