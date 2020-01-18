Feature:
As a coffee buyer
I want a coffee machine that
I can put coins in 
or pay with bank card
and get a cup of  back
with sugar or without sugar
because I like Cappuccino amd Caffe Latte and crave caffeine.

Background: Coffe machine basic missing milk powder
    Given that the machine is plugged in
    And that water is available
    And the machine has plastic cups
    And that the machine has enough  coffee for a cup
    And that the machine has enough milk powder for a cup of Cappuccino

Scenario: Missing milk powder for Cappuccino
    When the user presses the "Cappuccino" button
    Then the user does not receive a cup of Cappuccino
    Then the display shows "There is not enough milk powder"