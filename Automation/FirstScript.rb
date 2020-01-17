require 'rubygems'
require 'watir'
require 'selenium-webdriver'

# Starting a browser
Selenium::WebDriver::Firefox.driver_path="C:/Users/satis/RubymineProjects/Drivers/FirefoxDriver/geckodriver.exe"
browser = Watir::Browser.new :firefox

# Maximize browser
browser.window.maximize

# Open url
#browser.goto("https://www.google.com/")
browser.goto("https://www.facebook.com/")
#browser.back
#browser.forward
#browser.refresh
#puts browser.text  -- Displays complete text on the browser
puts browser.url
puts browser.title
browser.text_field(:id, "email").set("srimerla414@gmail.com")
browser.text_field(:name, "pass").set("sweetysree09")
browser.button(:id, "u_0_2").click

browser.close


