Feature:
As a coffee buyer
I want a coffee machine that
I can put coins in
or pay with bank card
and get a cup of Caffe Latte back
with or without sugar
because I like Caffe Latte and crave caffeine.

  Background: Coffe machine basic
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough coffee for a cup
    And the machine has plastic cups
    And that the machine has enough milk powder for a cup of Caffe Latte

  Scenario Outline: buy Caffe Latte without sugar with coins
    When the user presses the "CaffeLatte" button
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user presses the "Start" button
    Then the user recieves <cup> cup of Caffe Latte.

    Examples:
      | money1     | money2 | money3 | money4 | cup |
      | 10         | 10     | 0      | 0      | 1   |
      | 5          | 5      | 5      | 5      | 1   |
      | 10         | 0      | 0      | 0      | 0   |
      | "byxknapp" | 1      | 0      | 0      | 0   |
      | 5          | 0      | 0      | 0      | 0   |

  Scenario: buy Caffe Latte without sugar and pay with bank card
    When the user presses the "CaffeLatte" button
    And the user taps the bank card near the terminal
    And the payment is accepted
    And the user presses the "Start" button
    And the money is withdrawn from the account
    Then the user receives a cup of Caffe Latte

  Scenario Outline: buy Caffe Latte with sugar with coins
    And the machine has enough sugar for a cup
    When the user presses the "CaffeLatte" button
    And the user presses the "Sugar" button
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user presses the "Start" button
    Then the user recieves <cup> cup of Caffe Latte with sugar.

    Examples:
      | money1     | money2 | money3 | money4 | cup |
      | 10         | 10     | 0      | 0      | 1   |
      | 5          | 5      | 5      | 5      | 1   |
      | 10         | 0      | 0      | 0      | 0   |
      | "byxknapp" | 1      | 0      | 0      | 0   |
      | 5          | 0      | 0      | 0      | 0   |

  Scenario: buy Caffe Latte with sugar and pay with bank card
    And the machine has enough sugar for a cup
    When the user presses the "CaffeLatte" button
    And the user presses the "Sugar" button
    And the user taps the bank card near the terminal
    And the payment is accepted
    And the user presses the "Start" button
    And the money is withdrawn from the account
    Then the user receives a cup of Caffe Latte with sugar.