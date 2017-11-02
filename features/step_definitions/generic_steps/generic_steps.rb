login_page = LoginPage.new

Given("I have logged in") do
  login_page.load
  login_page.username_login.set 'gbopoeta@gmail.com'
  login_page.password_login.set 'fr$$d0m83'
  login_page.loginSubmit.click
end
