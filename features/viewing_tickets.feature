Feature: Viewing tickets
  In order to view information about tickets
  As a user
  I want to be able to see a list of available tickets

  Scenario: Listing all tickets
    Given there is a ticket called "51220"
    And I am on the homepage
    When I follow "51220"
    Then I should be on the ticket page for "51220"
