Given("I am on the contaazul login page") do
  visit '/auth'
end

When("I enter the acess data for contaazul") do
  fill_in 'username_login', with: 'barbaracabral@gmail.com'
  fill_in 'password_login', with: 'fr$$d0m83'
  find('#loginSubmit').click
end

Then("I should be able to access the contaazul account") do
  expect(page).to have_current_path('/visao-geral')
end
