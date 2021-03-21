module SanityCheckHelper
  def login_email
    @driver.find_element(css: 'input[type="email"]').send_keys ''
    @driver.find_element(css: 'input[type="password"]').send_keys ''
    @driver.find_element(css: 'input[type="submit"]').click
  end

  def login_username
    @driver.find_element(css: 'input[type="email"]').send_keys ''
    @driver.find_element(css: 'input[type="password"]').send_keys ''
    @driver.find_element(css: 'input[type="submit"]').click
  end

  def login_google_account
    @driver.find_element(css: 'input[type="email"]').send_keys ''
    @driver.find_element(css: 'input[type="password"]').send_keys ''
    @driver.find_element(css: 'input[type="submit"]').click
  end

  def main_display_validator
    @wait.until { @driver.find_element(tag_name: 'main').displayed? }
  end

  def logout
    @driver.find_element(xpath: '//*[@id="logout"]').click
  end

  def navigate_to_settings
    @driver.find_element(xpath: '//*[@id="footer"]/div/div/a[2]/span').click
  end
end
