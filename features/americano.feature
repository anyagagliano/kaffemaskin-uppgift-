Feature:
  As a coffee buyer
  I want a coffee machine that
  I can put coins in 
  or pay with bank card
  and get a cup of Americano without sugar back
  because I like Americano and crave caffeine.

  Background: Coffe machine basic
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough coffee for a cup
    And the machine has plastic cups

  

  Scenario Outline: buy Americano without sugar with coins
    When the user presses the "Americano" button
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user presses the "Start" button
    Then the user recieves <cup> cup of Americano.

    Examples:
      | money1 | money2 | money3|money4| cup |
      | 10     | 10     |   0   |  0   | 1   |
      | 5      | 5      |   5   |  5   | 1   |
      | 10     | 0      |   0   |  0   | 0   |
      | "byxknapp" | 1  |   0   |  0   | 0   |
      | 5      | 0      |   0   |  0   | 0   |

  Scenario: buy Americano without sugar and pay with bank card
    When the user presses the "Americano" button
    And the user taps the bank card near the terminal
    And the payment is accepted
    And the user presses the "Start" button
    And the money is withdrawn from the account
    Then the user receives a cup of Americano

