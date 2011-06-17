Feature: Entering tickets
  In order to have tickets associated with equipment
  As a user
  I want to create them easily

  Background: 
    Given I am on the homepage
    When I follow "New Ticket"

  Scenario: Entering a ticket
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

  Scenario: Entering a ticket without information
    And I press "Enter Ticket"
    Then I should see "Ticket has not been entered."
    And I should see "Number can't be blank"
    And I should see "Customer can't be blank"
    And I should see "Date in can't be blank"
    And I should see "In by can't be blank"
    And I should see "Make can't be blank"
    And I should see "Model can't be blank"
    And I should see "Serial can't be blank"
