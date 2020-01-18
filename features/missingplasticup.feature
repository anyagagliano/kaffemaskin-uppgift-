Feature:
As a coffee buyer
I want a coffee machine that
I can put coins in 
or pay with bank card
and get a cup of  back
with sugar or without sugar
because I like Americano and crave caffeine.

Background: Coffe machine basic missing plastic cups
    Given that the machine is plugged in
    And that water is available
    And the machine does not have plastic cups
    And that the machine has enough  coffee for a cup

Scenario: Missing cup for Americano
    When the user presses the "Americano" button
    Then the user does not receive a cup of Americano
    Then the display shows "There is not a plastic cup available"

