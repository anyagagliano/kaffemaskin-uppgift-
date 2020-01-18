Feature:
As a coffee buyer
I want a coffee machine that
I can put coins in 
or pay with bank card
and if the machine does not have plastic cups
then display shows a warning.

Background: Coffe machine basic missing plastic cups
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough coffee for a cup
    And the machine does not have plastic cups
    

Scenario: Missing cup for Americano
    When the user presses the "Americano" button
    Then the user does not receive a cup of Americano
    Then the display shows "Sorry, seems we are missing some plastic cups"

