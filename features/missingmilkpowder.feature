Feature:
As a coffee buyer
I want a coffee machine that
I can put coins in 
or pay with bank card
and if the machine does not have enough milk powder
then display shows a warning.

Background: Coffe machine basic missing milk powder
    Given that the machine is plugged in
    And that water is available
    And the machine has plastic cups
    And that the machine has enough coffee for a cup
   

Scenario: Missing milk powder for Cappuccino
    And that the machine does not have enough milk powder for a cup of Cappuccino
    And the user presses the "Cappuccino" button
    Then the user does not receive a cup of Cappuccino
    Then the display shows "There is not enough milk powder"