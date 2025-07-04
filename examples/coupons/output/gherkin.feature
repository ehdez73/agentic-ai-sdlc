Feature: Coupon discount at checkout

  As a user, I want to be able to enter a discount coupon code at the checkout so that I can receive a discount on my order.

  Background:
    Given I have items in my cart
    And the cart total is "${cartTotal}"
    And I have a coupon code "${couponCode}"

  @valid
  Scenario Outline: Successfully apply a valid coupon code
    When I enter the coupon code "${couponCode}"
    Then I should see a success message indicating the coupon has been applied
    And the discount should be "${discountAmount}"
    And the new total should be "${newTotal}"

    Examples:
    | couponCode  | discountAmount | cartTotal | newTotal |
    | SAVE20      | 20             | 100       | 80       |
    | SPRING30    | 30             | 150       | 120      |

  @invalid
  Scenario Outline: Attempt to apply an invalid coupon code
    When I enter the coupon code "${invalidCouponCode}"
    Then I should see an error message indicating the coupon is invalid

    Examples:
    | invalidCouponCode |
    | INVALIDCODE      |
    | EXPIREDCODE      |

  @invalid
  Scenario: Attempt to apply a coupon below minimum cart total
    Given the cart total is "$50"
    When I enter the coupon code "SAVE20"
    Then I should see an error message indicating the minimum purchase requirement has not been met

  @valid
  Scenario: Cart value drops below minimum for coupon
    Given the cart total is "$30"
    When I add an item that reduces the cart to "$20"
    Then I should be notified that the coupon no longer applies

  @valid
  Scenario: Manually remove a coupon code
    When I click on the remove button for the coupon
    Then the coupon should be removed
    And the discount should no longer apply
