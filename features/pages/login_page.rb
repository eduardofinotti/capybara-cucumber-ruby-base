class LoginPage < SitePrism::Page
<<<<<<< HEAD
    set_url "/"
  
    element :login, '#edit-name'
    element :senha, '#edit-pass'
    element :botaoEntrar, '#edit-submit'
  
  end
  
=======
  set_url "/auth"

  element :username_login, '#username_login'
  element :password_login, '#password_login'
  element :loginSubmit, '#loginSubmit'

end
>>>>>>> 0ca5d43dda6cf2f6c085c3e4ea3cfa82976e80c6
