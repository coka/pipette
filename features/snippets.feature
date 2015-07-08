Feature: Snippets

  Scenario:
    Given a snippet titled "MySnippet" exists
    And I am on the homepage
    Then I should see "MySnippet"

  Scenario:
    Given I am on the homepage
    And I am signed in
    When I create a snippet titled "MySnippet"
    And I refresh
    Then I should see "MySnippet"
    And I should see my username
