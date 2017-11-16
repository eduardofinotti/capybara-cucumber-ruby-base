require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'capybara/poltergeist'

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30

<<<<<<< HEAD
Capybara.app_host = "http://www.bstqb.org.br"
=======
Capybara.app_host = "https://app.contaazul.com"

>>>>>>> 0ca5d43dda6cf2f6c085c3e4ea3cfa82976e80c6

BROWSER = ENV['BROWSER']

Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        'args' => [ "--start-maximized" ]
      }
    )
  )
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  elsif BROWSER.eql?('poltergeist')
    options = { js_errors: false }
    Capybara::Poltergeist::Driver.new(app, options)
  end
end
