require_relative 'sanity_check_helper'

include SanityCheckHelper

When 'I login' do
  login_email
end

And 'I navigate to settings' do
  navigate_to_settings
  sleep(3)
end

Then 'I logout' do
  logout
end
