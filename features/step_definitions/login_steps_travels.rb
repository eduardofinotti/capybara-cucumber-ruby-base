Given("I am on the login administrator page") do
  visit '/admin'
end

When("I enter the acess data for an administrator user") do
  fill_in 'email', with: 'admin@phptravels.com'
  fill_in 'password', with: 'demoadmin'
end

Then("I should be able to access the administrator panel") do
  # Não consegui mais acessar o 
end
