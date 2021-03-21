require_relative 'sanity_check_helper'

include SanityCheckHelper

When 'I login to validate the account name' do
  login_email
end

And 'I click on settings' do
  sleep(3)
  navigate_to_settings
end

Then 'I must be able to see my account name' do
  sleep(3)
  account_name = @driver.find_element(class: 'option-title').text
  if account_name == 'Quality Assurance'
    puts "(ง'̀-'́)ง"
  else
    puts "ಠ_ಠ"
  end
end

When 'I login to validate the school name' do
  login_email
end

Then 'I must be able to see the school name' do
  sleep(3)
  school_name = @driver.find_element(class: 'truncate-multiline').text
  if school_name == 'Amco Soporte MX'
    puts "(ง'̀-'́)ง"
  else
    puts "ಠ_ಠ"
  end
end

When 'I login to switch the app language' do
  login_email
end

And 'I switch the languague' do
  sleep(3)
  @driver.find_element(class: 'modal-trigger').click
  sleep(3)
  @driver.find_element(class: 'select-dropdown').click
  sleep(3)
  @driver.find_element(xpath: '//*[text()="Spanish"]').click
  @driver.find_element(class: 'btn-flat').click
end

Then 'I should see the app in English' do
  sleep(2)
  language = @driver.find_element(xpath: '//*[@id="secondary-nav"]/ul/li[1]/a')
  if language == 'Profesores'
    puts "(ง'̀-'́)ง"
  else
    puts "ಠ_ಠ"
  end
end
