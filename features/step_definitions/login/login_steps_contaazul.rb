login_page = LoginPage.new
main_page = MainPage.new

Given("I am on the contaazul login page") do
  login_page.load
end

When("I enter the acess data for contaazul") do
  login_page.username_login.set 'barbaracabral@gmail.com'
  login_page.password_login.set 'fr$$d0m83'
  login_page.loginSubmit.click
end

Then("I should be able to access the contaazul account") do
  expect(page).to have_css('a#liInicio')
end
