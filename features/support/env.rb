require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "os"


CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))


case ENV["BROWSER"]
when "firefox"
   @driver = :selenium
when "chrome"
   @driver = :selenium_chrome 
when "headless"
   @driver = :selenium_chrome_headless
else 
   puts "Invalid Browsers"
end

Capybara.configure do |config|
    config.default_driver = @driver
    config.app_host = CONFIG["url"]
    config.default_max_wait_time = 5
end