@nova_compra @javascript
Feature: New purchase from the home page
In order to generate a new purchase
As an user
I want to input a new buy

Scenario: Adding a new purchase
 Given I have logged in
 When I enter select "Nova Compra"
 Then I see the new buy page
