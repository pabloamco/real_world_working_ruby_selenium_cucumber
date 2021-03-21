require_relative 'sanity_check_helper'

include SanityCheckHelper

When 'I login with email' do
  login_email
end

Then 'I must be on the teachers view with email' do
  main_display_validator
end

When 'I login with username' do
  login_username
end

Then 'I must be on the teachers view with username' do
  main_display_validator
end

When 'I login with google account' do
  login_username
end

Then 'I must be on the teachers view with google account' do
  main_display_validator
end
