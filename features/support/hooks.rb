require 'selenium-webdriver'
require 'watir'
require 'webdrivers'
require 'pry'

Before do |scenario|
  DataMagic.load_for_scenario(scenario)
  @driver = Selenium::WebDriver.for :chrome
  @driver.get 'https://stage-id.amco.me/login?service=https%3A%2F%2Fstage-as.amco.me%2F'
  @wait = Selenium::WebDriver::Wait.new timeout: 15
  # environment urls
  @env = 'stage' # Stage
  # @env = 'rc' # stage-id-rc
  # @env =  "live" # Live or Load balancer
  case @env
  when 'stage'
    @env_as = "https://#{@env}-as.amco.me"
  when 'rc'
    @env_as = "https://as-#{@env}.amco.me"
  when 'live'
    @env_as = "https://as.amco.me"
  end
end

After do
  @driver.close
end
