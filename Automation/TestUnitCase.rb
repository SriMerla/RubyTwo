require 'watir'
require 'selenium-webdriver'
require 'test/unit'

class TestUnitLogin < Test::Unit::TestCase
  # task need to perform before testcase
  def setup
    # caps=Selenium::WebDriver::Remote::Capabilities.firefox(:firefox_options => {detach: true})
    Selenium::WebDriver::firefox.driver_path="C:/Users/satis/RubymineProjects/Drivers/FirefoxDriver/geckodriver.exe"
    @browser=Watir::Browser.new :firefox #, desired_capabilities:caps
    @browser.goto"https://www.facebook.com/"
  end
  # task need to perform after testcase
  def teardown
    @browser.close
  end
  # this is a test case method, we write testcase code here
  def testCase1
    actTitle = @browser.title
    ecpTitle = "log in or sign up"
    assert_true(actTitle.include?(ecpTitle), "[Error Message]Actual title doesn't match to expected")
    browser.text_field(:id, "email").set("srimerla414@gmail.com")
    browser.text_field(:name, "pass").set("sweetysree09")
    browser.button(:id, "u_0_2").click

  end
end