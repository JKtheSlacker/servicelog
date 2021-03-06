Feature: Editing Tickets
  In order to update ticket information
  As a user
  I want to be able to do that through an interface

  Background:
    Given there is a ticket called "51220"
    And I am on the homepage
    When I follow "51220"
    And I follow "Edit Ticket"

  Scenario: Editing a ticket
    And I fill in "Date out" with "05/07/2011"
    And I fill in "Out by" with "JKW"
    And I press "Update Ticket"
    Then I should see "Ticket has been updated."
    And I should be on the ticket page for "51220"

  Scenario: Editing a ticket with invalid attributes is bad
    And I fill in "Customer" with ""
    And I press "Update Ticket"
    Then I should see "Ticket has not been updated."
