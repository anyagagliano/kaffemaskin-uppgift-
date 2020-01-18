Feature:  
  As a coffee buyer
  I want a coffee machine that
  I can put coins in 
  or pay with bank card
  and get a cup of Americano back
  with sugar or without sugar
  because I like Americano and crave caffeine.

  Background: Coffe machine basic
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough  coffee for a cup
    And the machine has plastic cups

  Scenario Outline: buy Americano with sugar and pay with coins
    Given the machine has enough sugar for a cup
    When the user presses the "Americano" button
    And the user presses the "Sugar" button
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And presses the "Start" button
    Then the user recieves <cup> cup of Americano with sugar.

    Examples:
      | money1     | money2 | money3 | money4 | cup |
      | 10         | 10     | 0      | 0      | 1   |
      | 5          | 5      | 5      | 5      | 1   |
      | 10         | 0      | 0      | 0      | 0   |
      | "byxknapp" | 1      | 0      | 0      | 0   |
      | 5          | 0      | 0      | 0      | 0   |


  Scenario: buy Americano with sugar and pay with bank card
    Given teh machine has enough sugar for a cup
    When the user presses the "Americano" button
    And the user presses the "Sugar" button
    And the user taps the bank card near the terminal
    And the payment is accepted
    And the user presses the "Start" button
    Then the user receives a cup of Americano with sugar.



