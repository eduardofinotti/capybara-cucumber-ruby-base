@login_admin @javascript
Feature: Login as an admin user
In order to acess de Administrator panel
As an Admin user
I want to have access to the Application

Scenario: Login as an Administrator user
 Given I am on the login administrator page
 When I enter the acess data for an administrator user
 Then I should be able to access the administrator panel
