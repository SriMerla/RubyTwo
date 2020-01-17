require 'watir'
#require 'watir-webdriver'
require 'selenium-webdriver'
require 'test/unit'
require '../Utilities/config_read'


class BaseClass < Test::Unit::TestCase

  def setup
    Selenium::WebDriver::Firefox.driver_path="../Drivers/geckodriver.exe"
    @@browser = Watir::Browser.new :firefox
    @@browser.window.maximize
    configfile = ConfigRead.new
    @@browser.goto configfile.readconfigdata("applicationURL")

  end

  def teardown
    @@browser.close
  end

  def testCase1

  end


end

