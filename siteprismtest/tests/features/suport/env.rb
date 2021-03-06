require 'capybara/cucumber'
require 'selenium-webdriver' 
require 'site_prism'

#configuração do capybara

Capybara.configure do |config|

    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5
end

Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end