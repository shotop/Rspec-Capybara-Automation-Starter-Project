require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'pry'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'

RSpec.configure do |config|

	Capybara.register_driver :selenium_chrome do |app|
	  Capybara::Selenium::Driver.new(app, browser: :chrome)
	end

	Capybara.javascript_driver = :selenium_chrome
	Capybara.run_server = false
	Capybara.configure do |config|  
	  config.default_max_wait_time = 10 # seconds
	  config.default_driver = :selenium
	end
    
	config.include Capybara::DSL
end

