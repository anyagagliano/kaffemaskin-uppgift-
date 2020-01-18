Feature:
As a coffee buyer
I want a coffee machine that
I can put coins in 
or pay with bank card
and get a cup of Cappuccino back
with sugar or without sugar
because I like Cappuccino and crave caffeine.

  Background: Coffe machine basic
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough  coffee for a cup
    And that the machine has enough milk powder for a cup of Cappuccino
    And the machine has plastic cups

  Scenario Outline: buy Cappuccino without sugar with coins
    When the user presses the "Cappuccino" button
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And presses the "Start" button
    Then the user recieves <cup> cup of Cappuccino.

    Examples:
      | money1     | money2 | money3 | money4 | cup |
      | 10         | 10     | 0      | 0      | 1   |
      | 5          | 5      | 5      | 5      | 1   |
      | 10         | 0      | 0      | 0      | 0   |
      | "byxknapp" | 1      | 0      | 0      | 0   |
      | 5          | 0      | 0      | 0      | 0   |

  Scenario: buy Cappuccino without sugar and pay with bank card
    When the user presses the "Cappuccino" button
    And the user taps the bank card near the terminal
    And the payment is accepted
    And the user presses the "Start" button
    Then the user receives a cup of Cappuccino

  Scenario Outline: buy Cappuccino with sugar with coins
    Given the machine has enough sugar for a cup
    When the user presses the "Cappuccino" button
    And the user presses the "Sugar" button
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And presses the "Start" button
    Then the user recieves <cup> cup of Cappuccino with sugar.

    Examples:
      | money1     | money2 | money3 | money4 | cup |
      | 10         | 10     | 0      | 0      | 1   |
      | 5          | 5      | 5      | 5      | 1   |
      | 10         | 0      | 0      | 0      | 0   |
      | "byxknapp" | 1      | 0      | 0      | 0   |
      | 5          | 0      | 0      | 0      | 0   |

  Scenario: buy Cappuccino with sugar and pay with bank card
   
    Given the machine has enough sugar for a cup
    When the user presses the "Cappuccino" button
    And the user presses the "Sugar" button
    And the user taps the bank card near the terminal
    And the payment is accepted
    And the user presses the "Start" button
    Then the user receives a cup of Cappuccino with sugar.
    