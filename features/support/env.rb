require 'capybara'
require 'cucumber'
require 'rspec'
require 'selenium/webdriver'
require 'capybara/dsl'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w(headless disable-gpu) }
  )

  Capybara::Selenium::Driver.new app,
    browser: :chrome,
    desired_capabilities: capabilities
end

Capybara.run_server = false
Capybara.default_driver = :headless_chrome
Capybara.javascript_driver = :headless_chrome
Capybara.default_selector = :css
Capybara.default_max_wait_time = 30

Capybara.app_host = 'https://www.community-announcer.com'

World(Capybara::DSL)
