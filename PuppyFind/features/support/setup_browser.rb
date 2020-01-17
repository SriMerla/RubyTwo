require 'watir-webdriver'

class SetupBrowser
  @browser
  def open_Browser(browser_name)
    if browser_name == "IE"
      browser = Watir::Browser.new :ie
    elsif browser_name == "chrome"
      browser = Watir::Brower.new :chrome
    else
      browser = Watir::Brower.new :firefox
  end
  end
end

def goto_url
  browser.goto "https://google.com"
end