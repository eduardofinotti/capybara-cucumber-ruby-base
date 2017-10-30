require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
# require 'site_prism'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
  # Capybara::Selenium::Driver.new app, browser: :chrome
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60

Capybara.app_host = "http://www.phptravels.net"

World(Capybara::DSL)
# require 'rbconfig'
# require 'cucumber/formatter/unicode'

# require 'capybara'
# require 'capybara/dsl'
# require "capybara/cucumber"

# https://robots.thoughtbot.com/headless-feature-specs-with-chrome
