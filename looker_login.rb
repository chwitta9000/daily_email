require 'capybara'

# Variables for login & filename
date_for_filename = Time.now.strftime("%m_%d_%Y")
root_url = "https://avantcredit.looker.com/login"
final_url = "https://avantcredit.looker.com/dashboards/crimson/4_daily_reporting_dashboard"
login_email = 'charles.whittaker@avantcredit.com'
login_password = 'Ac3th3test'

# Log in and screenshot
session = Capybara::Session.new(:selenium)
session.visit root_url

session.fill_in 'Email', :with => login_email
session.fill_in 'Password', :with => login_password

session.click_button 'Log In'

session.visit final_url

sleep(60)

session.save_screenshot("AvantCredit Daily Reporting_#{date_for_filename}.png")

# Mail screenshot





