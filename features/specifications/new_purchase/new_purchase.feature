@new_purchase @javascript
Feature: New purchase from the home page
In order to generate a new purchase
As an user
I want to input a new buy

Background:
  Given I have logged in
  And I acces to realize a new purchase

@adding_itens
Scenario Outline: Adding itens in a new purchase
  And I insert the purchase negotiator "Bravi Software"
  And I insert the purchase number "010203"
  And I insert the purchase category "Cartório"
  And I insert <purchase_item>, <purchaseItemDescription>, <purchaseItemQuantity>, <purchaseItemPrice>
  |purchase_item|purchaseItemDescription|purchaseItemQuantity|purchaseItemPrice|purchase_item_total|
  |'Item 01'|'Item 01 - Description'| 5 | '120,50' | '602,50' |
  |'Item 02'|'Item 02 - Description'| 2 | '120,00' | '240,00' |
  |'Item 03'|'Item 03 - Description'| 10 | '120,50' | '1.205,00' |
  Then I see the <purchase_item_total>


@submit_a_new_purchase
Scenario: Adding itens and submit a new purchase
  And I insert the purchase negotiator "Bravi Software"
  And I insert the purchase number "010203"
  And I insert the purchase category "Cartório"
  And I insert a set of itens
  And I save the purchase
  Then I see the statements Summary Receivable page
