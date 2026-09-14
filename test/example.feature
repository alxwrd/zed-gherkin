# language: en
@smoke @wip
Feature: Shopping cart
  As a shopper
  I want to add items to my cart
  So that I can purchase them later

  Background:
    Given the store has the following products:
      | name   | price |
      | Widget | 9.99  |
      | Gadget | 19.99 |

  Scenario: Add a single item to the cart
    Given I am on the "Widget" product page
    When I click "Add to cart"
    Then my cart should contain 1 item
    And the cart total should be "9.99"

  Scenario Outline: Add multiple items to the cart
    Given I am on the "<product>" product page
    When I add <quantity> to my cart
    Then my cart should contain <quantity> items

    Examples:
      | product | quantity |
      | Widget  | 2        |
      | Gadget  | 3        |

  Rule: Discounts apply above a threshold

    Scenario: Cart total triggers a discount
      Given my cart total is "100.00"
      When I view my cart
      Then I should see a message:
        """
        You qualify for free shipping!
        """
