Feature: Entering tickets
  In order to have tickets associated with equipment
  As a user
  I want to create them easily

  Scenario: Entering a ticket
    Given I am on the homepage
    When I follow "New Ticket"
    And I fill in "Number" with "51220"
    And I fill in "Customer" with "Testington Co Road"
    And I fill in "Date in" with "06/16/2011"
    And I fill in "In by" with "JKW"
    And I fill in "Make" with "Midland"
    And I fill in "Model" with "1337"
    And I fill in "Serial" with "134107"
    And I press "Enter Ticket"
    Then I should see "Ticket has been entered."
    And I should be on the ticket page for "51220"
    And I should see "51220 - Tickets - ServiceLog"
