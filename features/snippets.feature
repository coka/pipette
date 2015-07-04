Feature: Snippets

  Scenario:
    Given a snippet titled "Snippet1" exists
    And a snippet titled "Snippet2" exists
    And I am on the homepage
    Then I should see "Snippet1"
    And I should see "Snippet2"

  Scenario:
    Given I am on the homepage
    And I am signed in
    When I create a snippet titled "MySnippet"
    And I refresh
    Then I should see "MySnippet"
    And I should see my email
