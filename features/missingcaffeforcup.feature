Feature:
As a coffee buyer
I want a coffee machine that
I can put coins in 
or pay with bank card
and if the machine does not have coffee for a cup
then display shows a warning.
 
Background: Coffe machine basic missing coffee
    Given that the machine is plugged in
    And that water is available
    And the machine has plastic cups
    And that the machine does not have enough coffee for a cup

Scenario: Missing coffee for Americano
    When the user presses the "Americano" button
    Then the user does not receive a cup of Americano
    Then the display shows "There is not enough coffee"

Scenario: Missing coffe for Cappuccino
    And that the machine has enough milk powder for a cup of Cappuccino
    When the user presses the "Cappuccino" button
    Then the user does not receive a cup of Cappuccino
    Then the display shows "There is not enough coffee"

Scenario: Missing coffe for Caffe Latte
    And that the machine has enough milk powder for a cup of Caffe Latte
    When the user presses the "CaffeLatte" button
    Then the user does not receive a cup of Caffe Latte
    Then the display shows "There is not enough coffee"
    

