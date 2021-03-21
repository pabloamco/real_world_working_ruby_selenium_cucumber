require_relative 'sanity_check_helper'

include SanityCheckHelper

When 'Coordinator logs in' do
  login_email
  sleep(2)
end

And 'I navigate to help view' do
  @driver.find_element(class: 'vertical-center-icon').click
end

And 'I click the Talk to Amco button' do
  sleep(2)
  @driver.find_element(xpath: '/html/body/main/div[1]/div/div/div/div[2]/div[2]/a').click
end

Then 'I should be redirected to callme site' do
  sleep(2)
  last_tab = @driver.window_handles[-1]
  @driver.switch_to.window(last_tab)
  callme_site = @driver.current_url
  if callme_site == 'https://stage-soporte.amco.me/'
    puts "(ง'̀-'́)ง"
  else
    puts "ಠ_ಠ"
  end
end
