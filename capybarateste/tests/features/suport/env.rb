# require 'capybara/cucumber'
require 'selenium-webdriver' 
require 'capybara/rspec/matchers'
require 'capybara/dsl'
require 'capybara'


World(Capybara::DSL)
World(Capybara::RSpecMatchers)

#configuração do capybara

Capybara.configure do |config|
    #selenium (por padrão vai rodar no firefox)
    #selenium_chrome (vai rodar no chrome)
    #selenium_chrome_headless (vai rodar no chrome sem GPU)

    #informa que irei usar o chrome como navegador padrão
    config.default_driver = :selenium_chrome
    #informa qual o site padrão
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    #informa qual o tempo padrão para esperar os elementos na tela por segundo
    config.default_max_wait_time = 5
end