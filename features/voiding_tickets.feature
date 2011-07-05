Feature: Voiding a ticket
  In order to void invalid tickets
  As an administrator
  I want to fill them in with VOID

  Scenario: Voiding a ticket
    Given there is a ticket called "51220"
    And I am on the homepage
    When I follow "51220"
    And I follow "Void Ticket"
    Then I should see "Ticket has been voided."
    Then I should not see "Testington County Road"
