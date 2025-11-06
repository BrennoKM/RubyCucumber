require 'capybara/rspec'
require 'capybara/cucumber'
require 'site_prism'
require 'rspec'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'dotenv'
require_relative 'page.initialize.rb'
include RSpec::Matchers


Dotenv.load
Environment = ENV['URL']

World(Page)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = Environment
  config.default_max_wait_time = 5
end