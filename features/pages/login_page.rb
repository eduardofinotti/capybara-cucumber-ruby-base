class LoginPage < SitePrism::Page
  set_url "/auth"

  element :username_login, '#username_login'
  element :password_login, '#password_login'
  element :loginSubmit, '#loginSubmit'

end
