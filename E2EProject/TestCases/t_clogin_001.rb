require 'watir'
require 'test/unit'
require '../Base/CreateDriver'
require '../Pages/login_page'

class TClogin_001 < BaseClass

  def testCase1
    login = LoginPage.new @@browser
    login.enter_username "srimerla414@gmail.com"
    login.enter_password "sweetysree09"
    login.submit
  end
end